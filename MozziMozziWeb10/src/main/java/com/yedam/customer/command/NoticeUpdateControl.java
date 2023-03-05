package com.yedam.customer.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.customer.service.CustomerService;
import com.yedam.customer.service.CustomerServiceImpl;
import com.yedam.customer.vo.NoticeVO;

public class NoticeUpdateControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		int no = Integer.parseInt(req.getParameter("no"));
		String title =req.getParameter("notice_title");
		String content = req.getParameter("notice_content");
		
		NoticeVO notice = new NoticeVO();
		
		notice.setTitle(title);
		notice.setContent(content);
		notice.setNo(no);
	
		
	
		
		
		CustomerService service = new CustomerServiceImpl();
		
		
		  int r = service.updateNotice(notice);
		  
		  if(r>0) {
			  return "customerNotice.do";
		  }
		
		return "customer/customerNoticeIn.tiles";
	}
		
	
}
