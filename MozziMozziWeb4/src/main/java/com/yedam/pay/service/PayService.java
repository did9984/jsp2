package com.yedam.pay.service;

import com.yedam.pay.vo.OrderItemVO;
import com.yedam.pay.vo.OrderVO;

public interface PayService {
	
	// product_order
	public int orderAdd(OrderVO order); // 주문 테이블에 추가
	
	// product_orderItem
	public int orderItemAdd(OrderItemVO orderItem); // 주문테이블과 연관된 주문 - 상품 테이블에 추가
	
	// product
	public int salesUpdate(String prodCode);
	
	// cart
	public int deleteCart(int cartId);
		
}
