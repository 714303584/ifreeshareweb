package com.ifreeshare.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ifreeshare.entity.Dictionary;
import com.ifreeshare.entity.Document;
import com.ifreeshare.service.DocumentService;


public class IndexServlet extends HttpServlet {
	DocumentService documentService = new DocumentService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Dictionary> list = new ArrayList<Dictionary>();
		
		for (int i = 0; i < 100; i++) {
			Dictionary d = new Dictionary();
			d.setDisplayName("生活休闲");
			list.add(d);
		}
		List<Document> hotDownload = documentService.list(null, null, 25);
		req.setAttribute("docTypes", list);
		req.setAttribute("hotDownload", hotDownload);
		
		req.getRequestDispatcher("/index.ftl").forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		
		
		
		req.getRequestDispatcher("/index.ftl").forward(req, resp);
		
	}
	
	

}
