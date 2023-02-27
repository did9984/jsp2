package com.yedam.product.mapper;

import java.util.List;

import com.yedam.product.vo.CartVO;
import com.yedam.product.vo.ProductVO;

public interface ProductMapper {
	
	// 상품
	public List<ProductVO> getList(); // 상품 리스트
	public ProductVO getProduct(String prodCode); // 단건조회
	
	// 장바구니
	public int addCart(CartVO cart) throws Exception; // 장바구니 추가
	public CartVO checkCart(CartVO cart); // 장바구니에 있는 목록인지 체크
	public List<CartVO> cartList(String id); // 로그인된 유저id에 따라 장바구니 목록 나오도록 만들기
	
}
