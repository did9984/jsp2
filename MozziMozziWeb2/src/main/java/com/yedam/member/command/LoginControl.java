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

public class LoginControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("uid");
		String pw = req.getParameter("upw");

		MemberVO vo = new MemberVO();
		// 읽어온 파라미터 값으로 서버단에 요청하기 위해 세팅
		vo.setUserId(id);
		vo.setUserPw(pw);

		MemberService service = new MemberServiceImpl();

		// 읽어온 값으로 DB에서 정보를 갖고 오는것
		MemberVO mvo = service.login(vo);

		// 해당 정보의 등급이 관리자인지 묻기위한 것
		String manager = "admin";

		if (mvo != null) {

			HttpSession session = req.getSession();
			// 가져온 정보를 세션에 남겨둔다, 이름은 나중에 문의같은것을 남길때 사용
			session.setAttribute("logId", mvo.getUserId());
			session.setAttribute("logPw", mvo.getUserPw());
			session.setAttribute("logName", mvo.getUserName());
			session.setAttribute("logManager", mvo.getManager());

			MemberVO mvo2 = service.getMember(id);
			// 해당 회원의 정보를 가져온다
			session.setAttribute("vo", mvo2);

			// 로그인한 등급이 관리자인지 확인
			if (mvo.getManager().equals(manager)) {
				return "admin/memberList.tiles"; // 관리자면 관리자모드의 회원목록
			}
			return "mypage/myInfoCheck.tiles"; // 일반회원이면 마이페이지로

		} else {
			return "member/login.tiles"; // 로그인 실패시 로그인 화면 그대로
		}

	}

}
