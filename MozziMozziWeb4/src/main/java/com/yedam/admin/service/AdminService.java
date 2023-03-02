package com.yedam.admin.service;

import java.util.List;

import com.yedam.admin.vo.AdminProductVO;

public interface AdminService {

	//한 건당 들어오니까 int,
	//등록이니까 addProduct로 내가 지정
	// NoticeVO 타입으로 들어오고 Product라고 내가 지정.	
	public int addProduct(AdminProductVO product);
	
	//관리자 상품목록
	public List<AdminProductVO> adminPordList();
	
	//관리자 상품조회
	public AdminProductVO getProduct(String prodCode);
	
	//상품수정
	public int modifyProduct(AdminProductVO product);
	
	//상품삭제 pCode는 DeleteProduct에서 지정한 값                    
	public int removeProduct(String pCode);
	
}
