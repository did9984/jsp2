package com.yedam.product.vo;

import lombok.Data;

@Data
public class OrderVO {
	
	private String orderNo;
	private String prodCode;
	private int totalQuantity;
	private int totlaPrice;
	private String orderDate;
	private String userId;
	private String payMent;
	private String status;
}
