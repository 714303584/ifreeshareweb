package com.ifreeshare.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.StringField;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.index.Term;
import org.json.JSONException;
import org.json.JSONObject;

import com.ifreeshare.lucene.LuceneFactory;
import com.ifreeshare.util.IoUtil;

public class ShareFileEditServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String fileName = req.getParameter("fileName");
		String webMd5 = req.getParameter("webMd5");
		String typef = req.getParameter("typef");
		String typec = req.getParameter("typec");
		String desc = req.getParameter("desc");
		String tags = req.getParameter("tags");
		String op = req.getParameter("op");
		
		System.out.println(fileName);
		Document document = new Document();
		
		Field webMd5Field = new StringField("webMd5", webMd5, Store.YES);
		document.add(webMd5Field);
		Field nameField = new TextField("fileName", fileName, Store.YES);
		document.add(nameField);
		Field typefField = new StringField("typef", typef, Store.YES);
		document.add(typefField);
		Field typecField = new StringField("typec", typec, Store.YES);
		document.add(typecField);
		Field tagsField = new TextField("tags", tags,Store.YES);
		document.add(tagsField);
		Field descField = new TextField("desc", desc,Store.YES);
		document.add(descField);
		
		
		IndexWriter writer = LuceneFactory.getIndexWriter(OpenMode.CREATE);
		if(op.equals("0")){
			writer.addDocument(document);
		}else{
			writer.updateDocument(new Term("webMd5",webMd5), document);
		}
		writer.commit();
		JSONObject json = new JSONObject();
		try {
			json.put("result", "ok");
			resp.getWriter().write(json.toString());
			IoUtil.close(resp.getWriter());
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String fileName = req.getParameter("fileName");
		super.doGet(req, resp);
	}
	
	
	
	
	

}
