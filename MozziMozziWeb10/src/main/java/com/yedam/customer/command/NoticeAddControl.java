package com.yedam.customer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.customer.service.CustomerService;
import com.yedam.customer.service.CustomerServiceImpl;
import com.yedam.customer.vo.NoticeVO;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class NoticeAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		
		
		String title =req.getParameter("notice_title");
		String content = req.getParameter("notice_content");
		
		NoticeVO notice = new NoticeVO();
		
		notice.setTitle(title);
		notice.setContent(content);
		
	
		
		
		CustomerService service = new CustomerServiceImpl();
		
		
		  int r = service.addNotice(notice);
		  
		  if(r>0) {
			  return "customerNotice.do";
		  }
		
		
		return "customer/noticeForm.do";
	}
	

}
