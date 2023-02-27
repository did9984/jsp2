package com.yedam.mypage.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class MyPageInfoControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("logId");
		
		MemberService service = new MemberServiceImpl();
		
		MemberVO mvo = service.getMember(id);
		session.setAttribute("vo", mvo);
		
		return "mypage/myInfo.tiles";
	}

}
