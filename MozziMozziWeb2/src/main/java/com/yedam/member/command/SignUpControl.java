package com.yedam.member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class SignUpControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("user_id");
		String pw = req.getParameter("user_pw");
		String name = req.getParameter("user_name");
		String birth = req.getParameter("user_birth");

		// 이메일
		String mail = req.getParameter("user_email");
		String mailEnd = req.getParameter("user_email_end");

		// 연락처
		String phone = req.getParameter("user_phone");
		String phoneMid = req.getParameter("user_phone_mid");
		String phoneEnd = req.getParameter("user_phone_end");

		// 주소
		String addr = req.getParameter("user_addr");
		String ditail = req.getParameter("address_detail");

		MemberVO member = new MemberVO();

		member.setUserId(id);
		member.setUserPw(pw);
		member.setUserName(name);
		member.setUserBirth(birth);
		member.setUserPhone(phone + phoneMid + phoneEnd);
		member.setUserEmail(mail + mailEnd);
		member.setUserAddr(addr + ditail);
		member.setManager("user");

		MemberService service = new MemberServiceImpl();
		// 가져온 값들로 DB에 추가하는 부분
		int r = service.addMember(member);

		if (r > 0) {
			// 회원가입 ( 회원정보 DB 등록 ) 이 성공하면 로그인 화면으로
			return "login.do";
		}

		return "signUpForm.do"; // 아니면 제자리
	}

}
