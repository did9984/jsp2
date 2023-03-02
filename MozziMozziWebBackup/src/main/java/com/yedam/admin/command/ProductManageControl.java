package com.yedam.admin.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.admin.service.AdminService;
import com.yedam.admin.service.AdminServiceImpl;
import com.yedam.admin.vo.AdminProductVO;
import com.yedam.common.Command;


public class ProductManageControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//             adminProductList.jsp에서 dduck라고 줌
		String dduck = req.getParameter("dduck");
//추상메소드가있는인터페이스  이름지정            구현 클래스
		AdminService service = new AdminServiceImpl();
		AdminProductVO ap = new AdminProductVO();
//  req요청.요소 값 지정(vo란 이름으로 dduck에 있는 상품코드를 이용해 서비스를 구현) 상세페이지 요청. 	
		ap = service.getProduct(dduck);
		req.setAttribute("vo", service.getProduct(dduck));
		
		req.setAttribute("category", ap.getProdCategory());
		return "admin/productManage.tiles";
	}

}
