package com.yedam.admin.mapper;

import java.util.List;



import com.yedam.admin.vo.AdminOrderVO;
import com.yedam.admin.vo.AdminProductVO;
import com.yedam.admin.vo.AdminReviewVO;

public interface AdminMapper {
	//관리자제품등록
	public int insertProduct(AdminProductVO product);
	//관리자 상품목록 조회
	public List<AdminProductVO> selectList();
	//관리자 상품 조회
	public AdminProductVO getProduct(String prodCode);
	
	//상품수정
	public int updateProduct(AdminProductVO product);
	
	//상품삭제
	public int deleteProduct(String pCode);

	//관리자 리뷰목록
	public List<AdminReviewVO> reviewList();

	// 전체주문조회
    public List<AdminOrderVO> OrderList();
	//주문검색
	public List<AdminOrderVO> searchOrderList(String OrderSearch);

	//주문 삭제 
	public int orderCancel(String orderNo);

	//주문 상태 변경 
	public int orderUpdate(String orderNo);
}
