package com.yedam.pay.service;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.pay.mapper.PayMapper;
import com.yedam.pay.vo.OrderItemVO;
import com.yedam.pay.vo.OrderVO;

public class PayServiceImpl implements PayService {

	SqlSession session = DataSource.getInstance().openSession(true);
	
	// session.selectOne("com.yedam.notice.mapper.NoticeMapper.getNotice")
	// NoticeService service = new NoticeServiceImpl(); 와 같은 원리인듯
	// NoticeMapper.java와 NoticeMapper.xml 을 매핑해주는 역할인듯?
	PayMapper mapper = session.getMapper(PayMapper.class);

	@Override
	public int orderAdd(OrderVO order) {

		return mapper.orderAdd(order);
	}

	@Override
	public int orderItemAdd(OrderItemVO orderItem) {
		return mapper.orderItemAdd(orderItem);
	}

	@Override
	public int salesUpdate(String prodCode) {
		return mapper.salesUpdate(prodCode);
	}

	@Override
	public int deleteCart(int cartId) {
		return mapper.deleteCart(cartId);
	}

}
