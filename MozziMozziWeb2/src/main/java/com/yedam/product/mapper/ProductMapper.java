package com.yedam.product.mapper;

import java.util.List;

import com.yedam.product.vo.CartVO;
import com.yedam.product.vo.ProductVO;
import com.yedam.product.vo.ReviewVO;

public interface ProductMapper {
	
	// 상품
	public List<ProductVO> getList(); // 상품 리스트
	public ProductVO getProduct(String prodCode); // 단건조회
	
	public List<ProductVO> searchProducts(String query);//검색
	public List<ProductVO> productListPresent(); //카테고리별 선물상품 
	public List<ProductVO> productListCake();// 카테고리 케이크 상품
	public List<ProductVO> productListfusion();// 카테고리 일반 상품 
	public List<ProductVO> productListnormal();// 카테고리 퓨전 상품
	
	// 장바구니
	public int addCart(CartVO cart) throws Exception; // 장바구니 추가
	public CartVO checkCart(CartVO cart); // 장바구니에 있는 목록인지 체크
	public List<CartVO> cartList(String id); // 로그인된 유저id에 따라 장바구니 목록 나오도록 만들기
	public int modifyCount(CartVO cart); // 장바구니 수량 수정
	public int deleteCart(int cartId); // 장바구니 삭제
	
	// 주문서
	public CartVO orderCart(int cartId); // 주문서에 담을 장바구니(단건조회)
	
	//리뷰목록
	public List<ReviewVO> reviewList(String prodCode);
}
