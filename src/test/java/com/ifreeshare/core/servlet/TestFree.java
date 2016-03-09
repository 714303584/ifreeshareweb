package com.ifreeshare.core.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestFree extends HttpServlet  {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setAttribute("user", "zhushunshan");
		req.setAttribute("name", "xiaozhu");
		req.setAttribute("price", "100");
		
		req.getRequestDispatcher("/index.ftl").forward(req, resp);
	}
	
	

}
