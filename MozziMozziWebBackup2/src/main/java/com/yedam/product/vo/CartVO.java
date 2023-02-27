package com.yedam.product.vo;

import lombok.Data;

@Data
public class CartVO {

	private int cartId; // 장바구니 id
	private String userId; // 유저 id
	private String prodCode; // 상품코드
	private int cartQuantity; // 수량
	private int cartPrice; // 수량 * 가격
	
	// cart테이블에는 없는 컬럼임 => join을 해서 가져올것들
	private String mainImage; // 이미지 경로
	private String prodName; // 상품명
	private int prodPrice; // 상품 가격
	
}
