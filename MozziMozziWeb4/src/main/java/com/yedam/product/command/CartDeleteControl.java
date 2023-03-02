package com.yedam.product.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;

public class CartDeleteControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int cartId = Integer.parseInt(req.getParameter("cartId"));
		
		ProductService service = new ProductServiceImpl();
		int r = service.deleteCart(cartId);
		
		if(r > 0) {
			return "{\"retCode\":\"Success\"}.json";
		}else {
			return "{\"retCode\":\"Fail\"}.json";
		}
	}

}
