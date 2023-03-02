package com.yedam.pay.vo;

import lombok.Data;

@Data
public class OrderItemVO {
	/*
		// product_orderItem 테이블
		ITEM_NO		-- 주문한 상품번호 , 시퀀스 (int)
		ORDER_NO	-- 주문번호(String)
		PROD_CODE	-- 상품코드(String)
		QUANTITY	-- 주문한 상품 수량 (int)
		ITEM_PRICE	-- 수량 * 가격(int)
	 */
	
	private int itemNo; // 주문한 상품들 시퀀스 번호
	private String orderNo; // 주문번호
	private String prodCode; // 상품번호
	private int quantity; // 주문한 상품 수량
	private int itemPrice; // 수량 * 가격
	
}
