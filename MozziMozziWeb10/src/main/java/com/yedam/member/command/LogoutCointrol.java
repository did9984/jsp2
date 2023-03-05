package com.yedam.member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;

public class LogoutCointrol implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 갖고 있던 세션을 삭제하는 것
		req.getSession().invalidate();
		return "main.do"; // 세션 삭제 후 메인리스트 화면
	}

}
