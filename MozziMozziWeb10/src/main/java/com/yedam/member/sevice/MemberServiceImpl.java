package com.yedam.member.sevice;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.member.mapper.MemberMapper;
import com.yedam.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService {

	SqlSession session = DataSource.getInstance().openSession(true); // true : 자동커밋

	// session.getMapper(인터페이스타입.class); 를 통해 메소드를 호출할수있다
	MemberMapper mapper = session.getMapper(MemberMapper.class);

	@Override
	public int addMember(MemberVO member) {
		return mapper.insertMember(member); // 회원등록
	}

	@Override
	public MemberVO login(MemberVO member) {
		return mapper.login(member); // 로그인
	}

	@Override
	public MemberVO getMember(String id) {
		return mapper.getMember(id); // 회원 단건 조회
	}

	@Override
	public int idCheck(String id) {
		return mapper.idCheck(id); // 아이디 중복체크
	}

	@Override
	public int modifyMember(MemberVO member) {
		return mapper.updateMember(member); // 회원 정보 수정
	}

	@Override
	public MemberVO getIdFind(String userName, String userEmail) {
		return mapper.getIdFind(userName, userEmail); // 아이디 찾기
	}

	@Override
	public MemberVO getPwFind(String userId, String userName, String userEmail) {
		return mapper.getPwFind(userId, userName, userEmail); // 비밀번호 찾기
	}

	@Override
	public int removeMember(String pw) {
		return mapper.deleteMember(pw); // 회원 삭제
	}

	@Override
	public int emailCheck(String email) {
		// TODO Auto-generated method stub
		return mapper.emailCheck(email);
	}

}
