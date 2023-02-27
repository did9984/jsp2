package com.yedam.member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class LoginControl implements Command{

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		String id = req.getParameter("uid");
		String pw = req.getParameter("upw");
		MemberVO vo = new MemberVO();
		
		vo.setUserId(id);
		vo.setUserPw(pw);
		
		MemberService service = new MemberServiceImpl();
		MemberVO mvo = service.login(vo);
		
		String manager = "admin";
		if (mvo != null) {
			HttpSession session = req.getSession();
			
			session.setAttribute("logId", mvo.getUserId());
			session.setAttribute("logPw", mvo.getUserPw());
			
			MemberVO mvo2 = service.getMember(id);
			session.setAttribute("vo", mvo2);
			
			if(mvo.getUserId().equals(manager)) {
				return "admin/memberList.tiles";
			}
			return "mypage/myInfoCheck.tiles";
			
		}else {
			req.setAttribute("result", "아이디 또는 비밀번호가 틀렸습니다.");
			return "member/login.tiles";
		}
		
		
	}

}
