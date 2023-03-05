package com.yedam.product.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.CartVO;

public class OneOrderControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String prodCode = req.getParameter("prodCode");
		String mainImage = req.getParameter("mainImage");
		String prodName = req.getParameter("prodName");
		String userId = req.getParameter("userId");
		int cartQuantity = Integer.parseInt(req.getParameter("cartQuantity")); // 수량
		int cartPrice = Integer.parseInt(req.getParameter("cartPrice")); // 수량 * 가격
		
		CartVO cart = new CartVO();
		ProductService service = new ProductServiceImpl();
		
		// 주문한 유저 정보 담기
		cart = service.userInfo(userId);
		
		cart.setProdCode(prodCode);
		cart.setMainImage(mainImage);
		cart.setProdName(prodName);
		cart.setCartQuantity(cartQuantity);
		cart.setCartPrice(cartPrice);
		
		req.setAttribute("order", cart);
		
		return "product/oneOrder.tiles";
	}

}
