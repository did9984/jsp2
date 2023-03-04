package com.yedam.admin.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.admin.service.AdminService;
import com.yedam.admin.service.AdminServiceImpl;
import com.yedam.admin.vo.AdminProductVO;
import com.yedam.common.Command;


public class ModifyProduct implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String param = req.getParameter("param");
		String code = req.getParameter("code");
		String name = req.getParameter("name");
		String price = req.getParameter("price");
		String Category = req.getParameter("Category");
		String mainImg = req.getParameter("mainImg");
		String detailImg = req.getParameter("detailImg");
		
		
		AdminProductVO product = new AdminProductVO();
		product.setProdCode(code);
		product.setProdName(name);
		product.setProdPrice(price);
		product.setProdCategory(Category);
		product.setMainImage(mainImg);
		product.setDetailImage(detailImg);
		
		AdminService service = new AdminServiceImpl();
		int r = service.modifyProduct(product);
		
		
		if(param != null && param.equals("ajax")) { // 회원관리에서 수정
			
			if(r > 0) {
				return "{\"retCode\" : \"Success\"}.json";
			}else {
				return "{\"retCode\" : \"Fail\"}.json";
			}
			
		} else { // 마이페이지에서 수정
			if(r > 0) { // 업데이트 성공시 adminProductList.do로 이동
				return "adminProductList.do";
			}else {
				return "admin/productManage.tiles"; // 실패시 mypage에 머물러있기
			}
		}
	}

}