package com.yedam.member.sevice;

import com.yedam.member.vo.MemberVO;

public interface MemberService {
	public MemberVO login(MemberVO member); // 로그인
	public int idCheck(String id);  // 아이디 중복체크용
	public MemberVO getMember(String id); // 회원 단건조회
	public int addMember(MemberVO member); // 등록
	public int modifyMember(MemberVO member);//회원정보수정.
	public MemberVO getIdFind(String name, String email); // 아이디찾기
	public MemberVO getPwFind(String id, String name, String email); // 비번찾기
}
