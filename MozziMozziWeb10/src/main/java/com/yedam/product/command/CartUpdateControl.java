package com.yedam.product.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.CartVO;

public class CartUpdateControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int cartId = Integer.parseInt(req.getParameter("cartId"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		int total = Integer.parseInt(req.getParameter("total"));
		
		CartVO cart = new CartVO();
		
		cart.setCartId(cartId);
		cart.setCartQuantity(quantity);
		cart.setCartPrice(total);
		
		ProductService service = new ProductServiceImpl();
		
		int r = service.modifyCount(cart);
		
		if(r > 0) {
			return "{\"retCode\":\"Success\"}.json";
		}else {
			return "{\"retCode\":\"Fail\"}.json";
		}
	}

}
