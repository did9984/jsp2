package com.yedam.mypage.vo;

import lombok.Data;

@Data
public class MyReviewVO {

	private int reNo; 			// 리뷰번호
	private String userId; 		// 유저아이디
	private String reContent; 	// 내용
	private String reImage; 	// 리뷰 이미지
	private int starRating; 	// 별점
	private String orderNo; 	// 주문번호
	private String prodCode; 	// 상품코드
	private String prodName; 	// 상품명
	
	
}
