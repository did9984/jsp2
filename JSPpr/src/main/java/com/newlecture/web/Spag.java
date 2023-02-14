package com.newlecture.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/spag")
public class Spag extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num = 0;
		String num_ = req.getParameter("n");
		if (num_ != null && !num_.equals(""))
			num = Integer.parseInt(num_);
		String result;

		if (num % 2 != 0) {
			result = "홀수";
		} else {
			result = "짝수";
		}
								
// script src= 처럼 java를 jsp 로 연결하는코드 
		
		req.setAttribute("result", result); //"" 안의 값은 뭐가들어가도 상관x  
		
      RequestDispatcher dsipatcher = 
    		  req.getRequestDispatcher("spag.jsp"); //서블릿 ()안에 jsp 이름입력
      dsipatcher.forward(req, resp);
	}
}
