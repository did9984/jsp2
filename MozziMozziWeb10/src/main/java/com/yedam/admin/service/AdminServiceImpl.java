package com.yedam.admin.service;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.admin.mapper.AdminMapper;

import com.yedam.admin.vo.AdminOrderVO;
import com.yedam.admin.vo.AdminProductVO;
import com.yedam.admin.vo.AdminReviewVO;
import com.yedam.common.DataSource;





public class AdminServiceImpl implements AdminService {

	
	SqlSession session = DataSource.getInstance().openSession(true);
	
	// session.selectOne("com.yedam.notice.mapper.NoticeMapper.getNotice")
	// NoticeService service = new NoticeServiceImpl(); 와 같은 원리인듯
	// NoticeMapper.java와 NoticeMapper.xml 을 매핑해주는 역할인듯?
	AdminMapper mapper = session.getMapper(AdminMapper.class);
	
	//관리자 상품등록
	@Override
	public int addProduct(AdminProductVO product) {
		   //AdminMapper.xml에 있는 메소드
		return mapper.insertProduct(product);
	}
	
	//관리자 상품목록
	@Override
	public List<AdminProductVO> adminPordList() {		
		return mapper.selectList();
	}

	//관리자 상품조회
	@Override
	public AdminProductVO getProduct(String prodCode) {
		return mapper.getProduct(prodCode);
	}
	
	@Override
	public int modifyProduct(AdminProductVO product) {
		return mapper.updateProduct(product);
	}

	//상품삭제	
	@Override
	public int removeProduct(String pCode) {
		return mapper.deleteProduct(pCode);
	}
	
	//관리자 리뷰목록
	@Override
	public List<AdminReviewVO> reviewList() {
		//아래 reviewList는 내가 지정 mapper에 이걸 써야됨
		return mapper.reviewList();
	}

	@Override
	public List<AdminOrderVO> OrderList() {
		return mapper.OrderList();
	}

	@Override
	public List<AdminOrderVO> searchOrderList(String OrderSearch) {
		// TODO Auto-generated method stub
		return mapper.searchOrderList(OrderSearch);
	}
	
	@Override
	public int orderCancel(String orderNo) {
		
		return mapper.orderCancel(orderNo);
	}
	
	@Override
	public int orderUpdate(String orderNo) {
		
		return mapper.orderUpdate(orderNo);
	}
	

}
