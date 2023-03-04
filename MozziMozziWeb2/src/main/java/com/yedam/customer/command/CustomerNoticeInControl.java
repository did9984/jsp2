package com.yedam.customer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.customer.service.CustomerService;
import com.yedam.customer.service.CustomerServiceImpl;
import com.yedam.customer.vo.NoticeVO;

public class CustomerNoticeInControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String no = req.getParameter("ntno");	
		
		
		
		CustomerService service = new CustomerServiceImpl();
		req.setAttribute("vo", service.getNotice(no));
		

		
		return "customer/customerNoticeIn.tiles";
	}

}
