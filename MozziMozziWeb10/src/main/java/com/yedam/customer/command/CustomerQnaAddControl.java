package com.yedam.customer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.customer.service.CustomerService;
import com.yedam.customer.service.CustomerServiceImpl;
import com.yedam.customer.vo.NoticeVO;
import com.yedam.customer.vo.QnaVO;

public class CustomerQnaAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String title =req.getParameter("qna_title");
		String uid = req.getParameter("qna_user_id");
		String content = req.getParameter("qna_content");
		String category = req.getParameter("muni");

		QnaVO qna = new QnaVO();
		
		qna.setQnaTitle(title);
		qna.setUserId(uid);
		qna.setQnaContent(content);
		qna.setCategory(category);
		
	
		
		
		CustomerService service = new CustomerServiceImpl();
		
		
		  int r = service.addQna(qna);
		  
		  if(r>0) {
			  return "customerQna.do";
		  }
	
		
		
		return "customer/customerQnaForm.tiles";
	}

}
