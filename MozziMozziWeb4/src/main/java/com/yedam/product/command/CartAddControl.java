package com.yedam.product.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.CartVO;

public class CartAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 장바구니 추가
		String id = req.getParameter("userId");
		String prodCode = req.getParameter("prodCode");
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		int price = Integer.parseInt(req.getParameter("total"));
	
		CartVO cart = new CartVO();
		cart.setUserId(id);
		cart.setProdCode(prodCode);
		cart.setCartQuantity(quantity);
		cart.setCartPrice(price);
		
		ProductService service = new ProductServiceImpl();
		
		int r = service.addCart(cart);
		
		if(r == 2) { // 장바구니에 이미 존재하는 상품일때
			return "{\"retCode\":\"Exist\"}.json";
		}else if(r == 1) { // 장바구니 추가
			return "{\"retCode\":\"Success\"}.json";
		}else { // 장바구니 추가시 에러발생
			System.out.println("에러!!!!!!!!!!!");
			return "{\"retCode\":\"Fail\"}.json";
		}
		
	}

}
