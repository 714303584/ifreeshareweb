package com.ifreeshare.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ifreeshare.entity.Document;
import com.ifreeshare.service.DocumentService;

public class FileDownLoadServlet extends HttpServlet {
	DocumentService documentService = new DocumentService();
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		 // 服务器相对路径     
		String md5 = req.getParameter("md5"); 
		Document doc = documentService.get(md5);
		
		System.out.println(req.getCharacterEncoding());
		
		File file = new File(doc.getLocalPath());
		if(!file.exists()){
			resp.setContentType("text/html;charset=GBK");
			resp.getWriter().print("指定文件不存在！");
			return;
		}
		ServletOutputStream out = resp.getOutputStream();
		String fileName = URLEncoder.encode(doc.getFileName(),"UTF-8");
		resp.setHeader("Content-disposition","attachment;filename="+fileName);
		System.out.println(fileName);
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		try {
			bis = new BufferedInputStream(new FileInputStream(doc.getLocalPath()));
			bos = new BufferedOutputStream(out);
			byte[] buff = new byte[2048];
			int bytesRead;
			while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
				bos.write(buff, 0, bytesRead);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if (bis != null)bis.close();
			if (bos != null)bos.close(); 
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
	
	

}
