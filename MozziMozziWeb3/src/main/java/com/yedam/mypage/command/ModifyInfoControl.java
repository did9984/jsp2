package com.yedam.mypage.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonObject;
import com.yedam.common.Command;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class ModifyInfoControl implements Command {

	/**
	 *
	 */
	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String pw = req.getParameter("pwd");
		String newPwd = req.getParameter("newPwd");
		String name = req.getParameter("NAME");
		String birth = req.getParameter("birthday");
		String mail = req.getParameter("email");
		String phone = req.getParameter("contact");
		String addr = req.getParameter("address");
		String ditail = req.getParameter("address_detail");
		
		MemberVO member = new MemberVO();
		
		member.setUserId(id);
		member.setUserPw(newPwd);
		member.setUserName(name);
		member.setUserBirth(birth);
		member.setUserEmail(mail);
		member.setUserPhone(phone);
		member.setUserAddr(addr+ditail);
		
		MemberService service = new MemberServiceImpl();
		
		int res = service.modifyMember(member);
		System.out.println("result :: " + res);
		if(res > 0) {
			resp.setContentType("text/html; charset=utf-8");
	        PrintWriter w = resp.getWriter();
	        //String json = "{"result" : "success"}";
	        JsonObject jsonVar = new JsonObject();
	        jsonVar.addProperty("result", "success");
	        w.write(jsonVar.toString());
	        w.flush();
	        w.close();
		}
		
		return "mypage/myInfo.tiles";
	}

}
