package com.ifreeshare.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.ifreeshare.entity.Document;
import com.ifreeshare.service.DocumentService;
import com.ifreeshare.util.RequestUtil;

public class DocShowServlet extends HttpServlet {
	DocumentService documentService = new DocumentService();
	Logger log4j  = Logger.getLogger(DocShowServlet.class);

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String md5 =  req.getParameter("md5");
		if(!(md5 == null) && !"".equals(md5)){
			Document docInfo = documentService.get(md5);
			if(docInfo != null){
				req.setAttribute("docInfo", docInfo);
				log4j.info(String.format("key:[%s] ",md5));
				log4j.error("1111111111111111");
				req.getRequestDispatcher("/doc_show.ftl").forward(req, resp);
			}else{
				resp.getOutputStream().print("Not Found!");
			}
		}else{
//			req.getRequestDispatcher("/404.ftl").forward(req, resp);
			resp.getOutputStream().print("Not Found!");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
