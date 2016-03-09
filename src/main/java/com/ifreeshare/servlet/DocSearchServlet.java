package com.ifreeshare.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.lucene.document.Document;
import org.apache.lucene.search.BooleanClause.Occur;
import org.apache.lucene.search.ScoreDoc;

import com.ifreeshare.lucene.LuceneFactory;

public class DocSearchServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String value = req.getParameter("value");
		System.out.println(value);
		String docType = req.getParameter("type");
		String[] values = {value,value,value};
		String[] field = {"fileName","tags","desc"};
		Occur[] occurs = {Occur.SHOULD,Occur.SHOULD,Occur.SHOULD};
		ScoreDoc after = null;
		Document[] documents =  LuceneFactory.search(values, 10, field, occurs, after);
		StringBuffer sb = new StringBuffer();
		List<com.ifreeshare.entity.Document> list = new ArrayList<com.ifreeshare.entity.Document>();
 		for (int i = 0; i < documents.length; i++) {
			Document document = documents[i];
			com.ifreeshare.entity.Document doc = new com.ifreeshare.entity.Document();
			doc.setFileName(document.get("fileName"));
			doc.setDesc("desc");
			list.add(doc);
			
		}
		System.out.println(sb.toString());
		req.setAttribute("results", list);
		req.getRequestDispatcher("/docsearch.ftl").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		super.doPost(req, resp);
	}
	
	
	

}
