package com.ifreeshare.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ifreeshare.entity.Dictionary;

public class TypeListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO 自动生成的方法存根
		
		Map<String, List<Dictionary>> map = new HashMap<String,List<Dictionary>>();
		for (int j = 0; j < 10; j++) {
			List<Dictionary> dictionaries = new ArrayList<Dictionary>();
			for (int i = 0; i < 20; i++) {
				Dictionary dictionary = new Dictionary();
				dictionary.setDisplayName("服装配饰"+i);
				dictionaries.add(dictionary);
			}
			map.put("生活休闲"+j, dictionaries);
		}
	
		
		
		req.setAttribute("types", map);
		
		req.getRequestDispatcher("/all.ftl").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO 自动生成的方法存根
		req.getRequestDispatcher("/all.ftl").forward(req, resp);
	}

}
