package com.newlecture.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req,
			ServletResponse res, 
			FilterChain cha)
			throws IOException, ServletException {
		// TODO Auto-generated method stub

		System.out.println("hello filter");
		
	}

}
