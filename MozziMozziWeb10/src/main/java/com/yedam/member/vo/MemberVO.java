package com.yedam.member.vo;

import lombok.Data;

@Data
public class MemberVO {
	private String userId; 		// user_id
	private String userPw; 		// user_pw
	private String userName; 	// user_name
	private String userBirth; 	// user_birth
	private String userEmail; 	// user_email
	private String userPhone; 	// user_phone
	private String userAddr; 	// user_addr
	private String manager; 	// manager
	private String emailCheck; 	// email_check
}

