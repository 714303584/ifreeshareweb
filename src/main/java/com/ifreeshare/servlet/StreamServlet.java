package com.ifreeshare.servlet;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.MessageDigest;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.ifreeshare.config.Configurations;
import com.ifreeshare.entity.Document;
import com.ifreeshare.factory.DocumentSorterFactory;
import com.ifreeshare.tools.PdfToSwfFactory;
import com.ifreeshare.util.ConfigUtil;
import com.ifreeshare.util.IoUtil;

public class StreamServlet extends HttpServlet {
	private static final long serialVersionUID = -8619685235661387895L;
	static final int BUFFER_LENGTH = 10240;
	static final String START_FIELD = "start";
	public static final String CONTENT_RANGE_HEADER = "content-range";
	

	public void init() throws ServletException {
		ConfigUtil.setWebRootPath(getServletContext().getRealPath("/"));
		System.out.println(getServletContext().getRealPath("/"));
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doOptions(req, resp);

		String token = req.getParameter("token");
		String size = req.getParameter("size");
		String fileName = req.getParameter("name");
		String webMD5 = req.getParameter("fileMd5");
		System.err.println("GET:"+webMD5);
		PrintWriter writer = resp.getWriter();

		JSONObject json = new JSONObject();
		long start = 0L;
		boolean success = true;
		String message = "";
		fileName =  new String(fileName.getBytes("ISO-8859-1"),"utf8");

		label260: try {
			File f = IoUtil.getTokenedFile(token);
			start = f.length();

			if ((token.endsWith("_0")) && ("0".equals(size))) {
				if (0L != start)
					break label260;
				f.renameTo(IoUtil.getFile(fileName));
			}
		} catch (FileNotFoundException fne) {
			message = "Error: " + fne.getMessage();
			success = false;
		} finally {
			try {
				if (success)
					json.put("start", start);
				json.put("success", success);
				json.put("message", message);
			} catch (JSONException localJSONException1) {
			}
			writer.write(json.toString());
			IoUtil.close(writer);
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doOptions(req, resp);
		String token = req.getParameter("token");
		String fileName = req.getParameter("name");
		Range range = IoUtil.parseRange(req);
		String webMD5 = req.getParameter("fileMd5");
		System.err.println("POST:"+webMD5);
		
//		fileName =  new String(fileName.getBytes("ISO-8859-1"),"utf8");

		OutputStream out = null;
		InputStream content = null;
		PrintWriter writer = resp.getWriter();

		JSONObject json = new JSONObject();
		long start = 0L;
		boolean success = true;
		String message = "";
		File f = IoUtil.getTokenedFile(token);
		File dst;
		
		MessageDigest messageDigest = null;
		try {
			
			
			if (f.length() != range.getFrom()) {
				throw new StreamException(
						StreamException.ERROR_FILE_RANGE_START);
			}

			/**
			 * warming--------------------------------------------------------
			 * MD5
			 * messageDigest = MessageDigest.getInstance("MD5");
			 * messageDigest.update(bytes, 0, read);
			 * BigInteger bigInt = new BigInteger(1, messageDigest.digest());
			 * String fileMD5 = bigInt.toString(16);
			 * warming--------------------------------------------------------
			 */
			
			out = new FileOutputStream(f, true);
			content = req.getInputStream();
			int read = 0;
			byte[] bytes = new byte[10240];
			while ((read = content.read(bytes)) != -1) {
				out.write(bytes, 0, read);
			}
			start = f.length();
		} catch (StreamException se) {
			success = StreamException.ERROR_FILE_RANGE_START == se.getCode();
			message = "Code: " + se.getCode();
		} catch (FileNotFoundException fne) {
			// File dst;
			message = "Code: " + StreamException.ERROR_FILE_NOT_EXIST;
			success = false;
		} catch (IOException io) {
			// File dst;
			message = "IO Error: " + io.getMessage();
			success = false;
		}finally {
			// File dst;
			IoUtil.close(out);
			IoUtil.close(content);

			if (range.getSize() == start) {
				// File
				System.out.println(fileName);
				dst = IoUtil.getFile(fileName);
				dst.delete();
				f.renameTo(dst);
				System.out.println("TK: `" + token + "`, NE: `" + fileName
						+ "`");
				System.out.println("fileName:" + dst.getAbsolutePath());
				String []  file_s= fileName.split(".");
				int i = file_s.length;
				String type=fileName.substring(fileName.lastIndexOf(".")+1); 
				System.out.println("fileType:"+type);
				System.out.println("WEBMD5:"+webMD5);
				
				Document doc = new Document();
				doc.setLocalPath(dst.getAbsolutePath());
				doc.setFileName(fileName);
				try {
					DocumentSorterFactory.instant().add(doc);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
				
				if (Configurations.isDeleteFinished())
					dst.delete();
			}
			try {
				if (success)
					json.put("start", start);
				json.put("success", success);
				json.put("message", message);
				json.put("webMd5", webMD5);
			} catch (JSONException localJSONException3) {
			}
			writer.write(json.toString());
			IoUtil.close(writer);
		}
	}

	protected void doOptions(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("application/json");
		resp.setHeader("Access-Control-Allow-Headers",
				"Content-Range,Content-Type");
		resp.setHeader("Access-Control-Allow-Origin",
				Configurations.getCrossOrigins());
		resp.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS");
	}

	public void destroy() {
		super.destroy();
	}
}