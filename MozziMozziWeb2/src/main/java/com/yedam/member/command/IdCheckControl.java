package com.yedam.member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class IdCheckControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("userId");

		MemberService service = new MemberServiceImpl();

		// 아이디 중복 체크
		int r = service.idCheck(id);

		if (r > 0) {
			// 1건이상 성공시 retCode : Success 주기
			return "{\"retCode\":\"Success\"}.json";
		} else {
			// 1건이상 실패시 retCode : Fail 주기
			return "{\"retCode\":\"Fail\"}.json";
		}

	}

}
