package com.yedam.product.vo;

import lombok.Data;

@Data
public class ReviewVO {

	private int reNo; // 댓글번호
	private String userId; // 유저아이디
	private String reContent; // 내용
	private String reImage; // 댓글 이미지
	private int starRating; // 별점
	private String orderNo; // 주문번호
	private String prodCode; //상품번호
	
}
