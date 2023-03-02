package com.yedam.product.command;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.ReviewVO;

public class ProductDetailControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//             productList.jsp에서 dduck라고 줌
		String dduck = req.getParameter("dduck");	
		
//추상메소드가있는인터페이스  이름지정            구현 클래스
		ProductService service = new ProductServiceImpl();
//  req요청.요소 값 지정(vo란 이름으로 dduck에 있는 상품코드를 이용해 서비스를 구현) 상세페이지 요청. 	
		req.setAttribute("vo", service.getProduct(dduck));
		return "product/productDetail.tiles";
	}

}
