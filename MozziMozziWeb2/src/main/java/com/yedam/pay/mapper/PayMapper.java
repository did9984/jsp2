package com.yedam.pay.mapper;

import java.util.List;

import com.yedam.pay.vo.OrderItemVO;
import com.yedam.pay.vo.OrderVO;

public interface PayMapper {

	// product_order
	public int orderAdd(OrderVO order); // 주문 테이블에 추가
	public List<OrderVO> orderList(String id); // 유저id에 대한 주문 테이블 리스트
	
	// product_orderItem
	public int orderItemAdd(OrderItemVO orderItem); // 주문테이블과 연관된 주문 - 상품 테이블에 추가
	
	// product
	public int salesUpdate(String prodCode); // 주문(결제)성공시 product테이블에 판매량 증가

	// cart
	public int deleteCart(int cartId); // 주문(결제)성공시 cart테이블에 주문한 장바구니 항목 삭제
	
	// orderEnd
	public OrderVO orderEnd(String orderNo); // 주문(결제)성공시 orderEnd페이지에 뿌려주는 데이터들
	
	// orderDetail
	public OrderVO orderDetail(String orderNo); // 주문완료(결제완료건)에 대한 상세 주문정보들
	
	// orderDetailItem
	public List<OrderItemVO> orderDetailItem(String orderNo); // 주문완료(결제완료건)에 대한 주문한 상품 정보들
	
}
