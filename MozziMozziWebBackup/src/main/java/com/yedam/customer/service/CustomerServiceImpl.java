package com.yedam.customer.service;


import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.customer.mapper.CustomerMapper;
import com.yedam.customer.vo.NoticeVO;


public class CustomerServiceImpl implements CustomerService {

	
	SqlSession session = DataSource.getInstance().openSession(true);
	
	// session.selectOne("com.yedam.notice.mapper.NoticeMapper.getNotice")
	// NoticeService service = new NoticeServiceImpl(); 와 같은 원리인듯
	// NoticeMapper.java와 NoticeMapper.xml 을 매핑해주는 역할인듯?
	CustomerMapper mapper = session.getMapper(CustomerMapper.class);

	@Override
	public int addNotice(NoticeVO notice) {
		
		return mapper.insertNotice(notice);
	}
	
	

}
