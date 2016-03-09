package com.ifreeshare.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PermissionFilter  implements Filter {
	
	List<String> list = new ArrayList<String>();
	@Override
	public void init(FilterConfig filter) throws ServletException {
		// TODO 自动生成的方法存根
		String filterUrl =  filter.getInitParameter("filterURL");
		String[] value = filterUrl.split(",");
		for (String string : value) {
			list.add(string);
		}
		
	}

	@Override
	public void doFilter(ServletRequest request,
			ServletResponse response, FilterChain param)
			throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		String url =  httpRequest.getRequestURI();
		HttpSession session = httpRequest.getSession();
		if(list.contains(url)){
			if(session.getAttribute("username") != null){
				param.doFilter(request, response);
			}else{
				httpResponse.sendRedirect("/404.html");
			}
		}else{
			param.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {
		
	}
	
	
	

}
