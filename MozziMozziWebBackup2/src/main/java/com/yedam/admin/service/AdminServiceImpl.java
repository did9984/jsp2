package com.yedam.admin.service;


import org.apache.ibatis.session.SqlSession;

import com.yedam.admin.mapper.AdminMapper;
import com.yedam.common.DataSource;



public class AdminServiceImpl implements AdminService {

	
	SqlSession session = DataSource.getInstance().openSession(true);
	
	// session.selectOne("com.yedam.notice.mapper.NoticeMapper.getNotice")
	// NoticeService service = new NoticeServiceImpl(); 와 같은 원리인듯
	// NoticeMapper.java와 NoticeMapper.xml 을 매핑해주는 역할인듯?
	AdminMapper mapper = session.getMapper(AdminMapper.class);
	

}
