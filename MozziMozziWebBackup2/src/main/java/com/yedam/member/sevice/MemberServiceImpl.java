package com.yedam.member.sevice;

import java.util.List;

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
		return mapper.insertMember(member);
	}


	@Override
	public MemberVO login(MemberVO member) {
		return mapper.login(member);
	}


	@Override
	public MemberVO getMember(String id) {
		return mapper.getMember(id);
	}


	@Override
	public int idCheck(String id) {
		return mapper.idCheck(id);
	}


	@Override
	public int modifyMember(MemberVO member) {
		return mapper.updateMember(member);
	}


	@Override
	public MemberVO getIdFind(String name, String email) {
		return mapper.getIdFind(name, email);
	}


	@Override
	public MemberVO getPwFind(String id, String name, String email) {
		return mapper.getPwFind(id, name, email);
	}







	
	
}
