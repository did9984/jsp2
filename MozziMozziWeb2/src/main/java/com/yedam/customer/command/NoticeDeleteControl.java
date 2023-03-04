package com.yedam.customer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.customer.service.CustomerService;
import com.yedam.customer.service.CustomerServiceImpl;
import com.yedam.customer.vo.NoticeVO;

public class NoticeDeleteControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		
		int no = Integer.parseInt(req.getParameter("no"));


		CustomerService service = new CustomerServiceImpl();
		
		
		  int r = service.deleteNotice(no);
		  
		  if(r>0) {
			  return "customerNotice.do";
		  }else {
			  return "main.do";
		  }
		
		  //return "customer/customerNoticeIn.tiles";
	
	
	
	}

}
