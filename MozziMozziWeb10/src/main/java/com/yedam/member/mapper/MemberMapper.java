package com.yedam.member.mapper;

import org.apache.ibatis.annotations.Param;

import com.yedam.member.vo.MemberVO;

public interface MemberMapper {
	public MemberVO login(MemberVO member); // 로그인

	public int idCheck(String id); // 아이디 중복체크용

	public int emailCheck(String email); // 이메일 인증
	
	public MemberVO getMember(String id); // 회원 단건조회

	public int insertMember(MemberVO member); // 등록

	public int updateMember(MemberVO member); // 회원정보수정.

	public int deleteMember(String pw);// 회원삭제.

	public MemberVO getIdFind(@Param("userName") String userName, @Param("userEmail") String userEmail); // 아이디찾기

	public MemberVO getPwFind(@Param("userId") String userId, @Param("userName") String userName,
			@Param("userEmail") String userEmail); // 비번찾기

}
