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

		// 아이디 찾기 이름과 이메일 정보 필요
		MemberVO find = service.getIdFind(name, email);

		if (find != null) {
			// 서비스로 가져온 값이 있다면 그 정보를 해당 tiles에 전해줌
			req.setAttribute("fvo", find);
			return "member/idFindInfo.tiles";
		} else {
			// 실패시 그 화면에 있기
			System.out.println("실패");
			return "member/idFind.tiles";
		}

	}

}
