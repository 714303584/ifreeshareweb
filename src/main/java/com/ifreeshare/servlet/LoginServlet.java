package com.ifreeshare.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ifreeshare.service.DocumentService;


public class LoginServlet extends HttpServlet {
	DocumentService documentService = new DocumentService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/index.ftl").forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String userName = req.getParameter("username");
		String password = req.getParameter("password");
		if(userName != null && userName.trim().length() != 0){
			if("admin".equals(userName)){
				req.getSession().setAttribute("username", userName);
				req.getRequestDispatcher("administrator/index.ftl").forward(req, resp);
			}else{
				resp.sendRedirect("/index.html");
			}
		}
		
		
		
	}
	
	

}
