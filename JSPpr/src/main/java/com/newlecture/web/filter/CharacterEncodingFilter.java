package com.newlecture.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class CharacterEncodingFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req,
			ServletResponse res, 
			FilterChain cha)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
        // doFileter 앞은 먼저실행 
		req.setCharacterEncoding("UTF-8");
		cha.doFilter(req, res);
		// doFilter 뒤는 나중에 실행  
		
		
	}

}
