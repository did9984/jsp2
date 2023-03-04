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
	private String prodName; // 상품이름
	private int quantity; // 주문한 상품 수량
	private int itemPrice; // 수량 * 가격
	
	//product_orderItem 테이블에는 없는 정보 => product와 JOIN 해서 가져올것들
	private String mainImage; // 메인이미지(썸네일)
	
	
}
