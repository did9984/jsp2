package com.yedam.product.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.CartVO;

public class OrderControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("selectCartId");
		String[] cartId = id.split(",");
		
		List<CartVO> list = new ArrayList<CartVO>();
		ProductService service = new ProductServiceImpl();
		
		for(int i = 1; i < cartId.length ; i++) {
			list.add(service.orderCart(Integer.parseInt(cartId[i])));
		}
		
		req.setAttribute("orderList", list);
		
//		if(list.size() != 0) {
//			return "{\"retCode\":\"Success\"}.json";
//		}else { 
//			System.out.println("에러!!!!!!!!!!!");
//			return "{\"retCode\":\"Fail\"}.json";
//		}
//		
		return "product/order.tiles";
		
	}

}
