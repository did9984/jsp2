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

public class MyInfoDelControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String chkPw = req.getParameter("pwd");
		
		HttpSession session = req.getSession();
		String pw = (String) session.getAttribute("logPw");
		
		
		
		MemberService service = new MemberServiceImpl();
		
		
		if(chkPw.equals(pw)) {
			if(service.removeMember(pw)>0) {
				return "member/login.tiles";
		}
			else {
				System.out.println("일치하지 않습니다.");
			}
		}
		return "mypage/myInfoDel.tiles";
		
		
	}
	
	

}
