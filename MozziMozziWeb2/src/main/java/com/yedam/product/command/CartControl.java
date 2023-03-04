package com.yedam.product.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.CartVO;
import com.yedam.product.vo.ProductVO;

public class CartControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 로그인된 userid 를 통해서 장바구니 목록들 select 하기
		
		String id = req.getParameter("id");
		
		ProductService service = new ProductServiceImpl();
		List<CartVO> cartList = service.cartList(id);
		req.setAttribute("cartList", cartList);
		
		return "product/cart.tiles";
	}

}
