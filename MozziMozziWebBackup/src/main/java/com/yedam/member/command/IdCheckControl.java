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
		System.out.println("id="+id);
		int r = service.idCheck(id);
		System.out.println("r=" +r);
		if(r>0) {
			return "{\"retCode\":\"Success\"}.json";
		}else {

			return "{\"retCode\":\"Fail\"}.json";
		}
		
		
	}

}
