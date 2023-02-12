package com.newlecture.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/notice-reg")
public class NoticeReg extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		resp.setCharacterEncoding("UTF-8"); // utf -8 로설정 
	     resp.setContentType("text/html; charset:UTF-8"); // 브라우저가 utf-8로 읽어들이게 설정  
	
	     
		PrintWriter out = resp.getWriter(); // 자바에서 html 글을 나오게 하는 태그  
//		req.setCharacterEncoding("UTF-8"); // form 으로 정보를 보낼때 한글을 인식하게해준다
		
		String title =req.getParameter("title"); //넘겨받을 html input name 값 입력
		String content =req.getParameter("content"); //  넘겨받을 html textarea name 값 입력 
	    
		out.println(title); // 넘겨받은 값을 value 를 출력
		out.println(content); // 넘겨받은 content.value 값을 출력 
		
	}

}
