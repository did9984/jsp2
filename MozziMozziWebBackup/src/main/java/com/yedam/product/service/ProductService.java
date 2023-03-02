package com.yedam.product.service;

import java.util.List;

import com.yedam.product.vo.CartVO;
import com.yedam.product.vo.ProductVO;

public interface ProductService {
	// list형식으로 ProductVO에 있는 객체들을 불러오는 것이 productList()
	public List<ProductVO> productList();
	//제품별 상세페이지
	public ProductVO getProduct(String prodCode);
	public List<ProductVO> getListPresent(String prodCategory); //카테고리별 상품 
	//검색
	public  List<ProductVO> searchProducts(String query);
	
	// 장바구니
	public int addCart(CartVO cart); // 장바구니 추가
	public CartVO checkCart(CartVO cart); // 장바구니에 있는 목록인지 체크
	public List<CartVO> cartList(String id); // 로그인된 유저id에 따라 장바구니 목록 나오도록 만들기
	public int modifyCount(CartVO cart); // 장바구니 수량 수정
	public int deleteCart(int cartId); // 장바구니 삭제
	
	// 주문서
	public CartVO orderCart(int cartId); // 주문서에 담을 장바구니(단건조회)
	public List<ProductVO> productListPresent(String prodCategory);
	
}
