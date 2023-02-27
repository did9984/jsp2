package com.yedam.member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class IdFindControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("user_name");
		String email = req.getParameter("user_email");
		
		MemberService service = new MemberServiceImpl();
		
		req.setAttribute("idFindInfo",service.getIdFind(name, email));
		
		
		return "MailSender.do";
	}

}
