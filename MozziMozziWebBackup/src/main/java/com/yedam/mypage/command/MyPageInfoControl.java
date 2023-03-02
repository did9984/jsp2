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
		
		String id = req.getParameter("user_id");
		String pw = req.getParameter("user_pw");
		String name = req.getParameter("user_name");
		String birth = req.getParameter("user_birth");
		String mail = req.getParameter("user_email");
		String phone = req.getParameter("user_phone");
		String addr = req.getParameter("user_addr");
		String ditail = req.getParameter("address_detail");
		
		MemberVO member = new MemberVO();
		
		member.setUserId(id);
		member.setUserPw(pw);
		member.setUserName(name);
		member.setUserBirth(birth);
		member.setUserEmail(mail);
		member.setUserPhone(phone);
		member.setUserAddr(addr+ditail);
		
		HttpSession session = req.getSession();
		String id1 = (String) session.getAttribute("logId");
		
		MemberService service = new MemberServiceImpl();
		
		MemberVO mvo = service.getMember(id1);
		session.setAttribute("vo", mvo);
		
		return "mypage/myInfo.tiles";
	}

}
