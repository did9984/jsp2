package com.yedam.admin.mapper;

import java.util.List;

import com.yedam.admin.vo.AdminProductVO;

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
}
