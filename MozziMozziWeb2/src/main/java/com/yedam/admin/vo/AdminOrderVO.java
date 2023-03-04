package com.yedam.admin.vo;

import lombok.Data;

@Data
public class AdminOrderVO {
	/*	// product_order 테이블
	  	ORDER_NO			-- 주문번호 (int)
		USER_ID				-- 주문자 아이디(String)
		STATUS				-- 주문상태(String) default : 결제완료
		ORDER_DATE			-- 주문일자(DATE) default sysdate
		TOTAL_PRICE			-- 총 결제가격(int)	
		pay_method			-- 결제방법(String)
		buyProdName			-- 구매한 상품명들 ( ex. 찹쌀떡 외 2건 )
		
		
		// 배송관련한 정보
		ADDRESSEE			-- 배송받을사람 (String)
		ADDRESSEE_ADDR		-- 배송받을 주소(String)
		ADDRESSEE_PHONE		-- 배송받을사람 폰번호(String)
		DELIVERY_REQUEST	-- 배송 요청 사항(String)
	*/
	private String orderNo; // 주문번호
	private String userId; // 주문자 아이디
	private String status; // 주문상태 default : 결제완료
	private String orderDate; // 주문일자 default sysdate
	private int totalPrice; // 총 결제 가격
	private String payMethod; // 결제 방법
	private String buyProdname; // 구매한 상품명들 ( ex. 찹쌀떡 외 2건 )
	
	private String addressee; // 배송 받을 사람 이름
	private String addresseeAddr; // 배송 받을 주소
	private String addresseePhone; // 배송 받을 사람의 번호
	private String deliveryRequest; // 배송 요청 사항
	
	// orderEnd.jsp에서 필요한 정보
	private String userName;
	
}
