package com.ifreeshare.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter {
	
	private String characterEncoding;
	
	private boolean enabled;

	@Override
	public void init(FilterConfig paramFilterConfig) throws ServletException {
		characterEncoding = paramFilterConfig.getInitParameter("characterEncoding");
		enabled = "true".equalsIgnoreCase(paramFilterConfig.getInitParameter("enabled").trim());

	}

	@Override
	public void doFilter(ServletRequest paramServletRequest,
			ServletResponse paramServletResponse, FilterChain paramFilterChain)
			throws IOException, ServletException {
		if(enabled || characterEncoding != null){
			paramServletRequest.setCharacterEncoding("UTF-8");
			paramServletResponse.setCharacterEncoding("UTF-8");
		}
		paramFilterChain.doFilter(paramServletRequest, paramServletResponse);
	}
	
	@Override
	public void destroy() {

	}

}
