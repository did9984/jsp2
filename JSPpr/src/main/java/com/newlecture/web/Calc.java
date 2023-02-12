package com.newlecture.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.tribes.ChannelSender;

@WebServlet("/Calc")
public class Calc extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		resp.setCharacterEncoding("UTF-8"); // utf -8 로설정
		resp.setContentType("text/html; charset:UTF-8"); // 브라우저가 utf-8로 읽어들이게 설정

		PrintWriter out = resp.getWriter(); // 자바에서 html 글을 나오게 하는 태그

		String add1 = req.getParameter("add"); // 넘겨받을 html input name 값 입력
		String add2 = req.getParameter("add2");  // 넘겨받을 html input name 값 입력
        String button = req.getParameter("button");
		int x = 0;
		int y = 0;
		
		if (!add1.equals("")) // 만약 add 의 값이 빈칸이 아니면 x = 숫자로 전환 
			x = Integer.parseInt(add1);
		if (!add2.equals(""))
			y = Integer.parseInt(add2);
		int result = x-y;
		if (button.equals("minus")) { // equals 로 value 값을 찾을수 있다 
			resp.getWriter().printf("result is %d\n", result);
		}else {
			result = x+y;
			resp.getWriter().printf("result is %d\n", result);
		}
		
		
		
		
		

	}

}
