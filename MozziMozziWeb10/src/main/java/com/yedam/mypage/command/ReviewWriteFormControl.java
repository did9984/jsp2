package com.yedam.mypage.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.member.sevice.MemberService;
import com.yedam.member.sevice.MemberServiceImpl;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.ProductVO;

public class ReviewWriteFormControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String orderNo = req.getParameter("orderNo");
		String prodCode = req.getParameter("prodCode");
		
		ProductService service = new ProductServiceImpl();
		ProductVO product = service.getProduct(prodCode);
		
		
		req.setAttribute("product", product);
		req.setAttribute("orderNo", orderNo);
		
		return "mypage/reviewWriteForm.tiles";
	}

}
