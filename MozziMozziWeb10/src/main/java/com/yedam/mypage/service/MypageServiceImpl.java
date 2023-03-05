package com.yedam.mypage.service;


import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.mypage.mapper.MypageMapper;
import com.yedam.mypage.vo.MyReviewVO;


public class MypageServiceImpl implements MypageService {

	
	SqlSession session = DataSource.getInstance().openSession(true);
	
	// session.selectOne("com.yedam.notice.mapper.NoticeMapper.getNotice")
	// NoticeService service = new NoticeServiceImpl(); 와 같은 원리인듯
	// NoticeMapper.java와 NoticeMapper.xml 을 매핑해주는 역할인듯?
	MypageMapper mapper = session.getMapper(MypageMapper.class);

	@Override
	public int reviewAdd(MyReviewVO vo) {
		
		return mapper.reviewAdd(vo);
	}
	

}
