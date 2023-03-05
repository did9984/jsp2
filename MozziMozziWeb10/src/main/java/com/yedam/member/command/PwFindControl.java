package com.yedam.member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class PwFindControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("user_id");
		String name = req.getParameter("user_name");
		String email = req.getParameter("user_email");

		MemberService service = new MemberServiceImpl();
		// 비밀번호 찾기 위한 값 아이디, 이름, 이메일
		MemberVO find = service.getPwFind(id, name, email);

		if (find != null) {
			// 찾은 정보가 있다면 세팅후 건내줌
			req.setAttribute("fvo", find);
			return "member/pwFindInfo.tiles";
		} else {
			System.out.println("실패");
			return "member/pwFind.tiles";
		}
	}

}
