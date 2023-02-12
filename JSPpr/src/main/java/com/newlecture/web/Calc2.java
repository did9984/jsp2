package com.newlecture.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.tribes.ChannelSender;
import org.apache.jasper.tagplugins.jstl.core.If;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

@WebServlet("/Calc2")
public class Calc2 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		ServletContext application = req.getServletContext();
		HttpSession session = req.getSession();
		Cookie[] cookies = req.getCookies();
		resp.setCharacterEncoding("UTF-8"); // utf -8 로설정
		resp.setContentType("text/html; charset:UTF-8"); // 브라우저가 utf-8로 읽어들이게 설정

		PrintWriter out = resp.getWriter(); // 자바에서 html 글을 나오게 하는 태그

		String v = req.getParameter("v"); // 넘겨받을 html input name 값 입력
		String op = req.getParameter("add");

		int v_ = 0;

		if (!v.equals(""))
			v_ = Integer.parseInt(v);

		if (op.equals("=")) {

//        	int x = (Integer)application.getAttribute("value");
//        	int x = (Integer)session.getAttribute("value");
			int x = 0;
			for (Cookie c : cookies) 
				if (c.getName().equals("value")) {
					x = Integer.parseInt(c.getValue());
				break;
			}
			

			int y = v_;
//        	String operator = (String)application.getAttribute("op");
//			String operator = (String) session.getAttribute("op");

			String operator = "";
			for (Cookie c : cookies) {
					if (c.getName().equals("op")) {
						operator = c.getValue();
					break;
				}
			}
			
			int result = 0;

			if (operator.equals("+")) // 만약 add 의 값이 빈칸이 아니면 x = 숫자로 전환
				result = x + y;
			else
				result = x - y;

			resp.getWriter().printf("result is %d\n", result);

			// 값을 저장
		} else {
//    		application.setAttribute("value", v_);
//    		application.setAttribute("op", op); // map 과 같은 역활 op =add
			// session.setAttribute("value", v_);
			// session.setAttribute("op", op); // map 과 같은 역활 op =add

			Cookie valuecookie = new Cookie("value", String.valueOf(v));
			Cookie opcookie = new Cookie("op", op);
			valuecookie.setPath("/Calc2"); // 특정 경로에만 쿠키를 전달 
			opcookie.setPath("/Calc2");
			resp.addCookie(valuecookie);
			resp.addCookie(opcookie);
		}

	}

}
