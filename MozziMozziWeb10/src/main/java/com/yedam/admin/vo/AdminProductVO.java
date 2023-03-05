package com.yedam.admin.vo;

import lombok.Data;

@Data
public class AdminProductVO {
	private String prodCode; // 상품코드
	private String prodName; // 상품명
	private String prodPrice; // 상품가격
	private String prodCategory; // 카테고리	
	private String mainImage; // 메인이미지(썸네일)
	private String detailImage; // 상세이미지
	private String update; // 등록일자
	private int sales; // 판매량
}
