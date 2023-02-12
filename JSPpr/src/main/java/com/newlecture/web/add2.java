package com.newlecture.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/add2")
public class add2 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		resp.setCharacterEncoding("UTF-8"); // utf -8 로설정
		resp.setContentType("text/html; charset:UTF-8"); // 브라우저가 utf-8로 읽어들이게 설정

		PrintWriter out = resp.getWriter(); // 자바에서 html 글을 나오게 하는 태그

		String[] add = req.getParameterValues("add"); // 배열로 받을수 있다

		int result = 0;

		for (int i = 0; i < add.length; i++) {
			int num = Integer.parseInt(add[i]);// i 하나 하나씩 add 값을 숫자로 변환
			result+=num;
		}
		

		
		resp.getWriter().printf("result is %d\n", result);

	}

}
