package com.yedam.product.vo;

import lombok.Data;

@Data
public class PayVO {

	private int payCode; // 결제번호
	private String orderNo; // 주문번호
	private String payMethod; // 결제방법
	private String payDate; // 결제일
	private int totalPrice; // 총금액
	
}
