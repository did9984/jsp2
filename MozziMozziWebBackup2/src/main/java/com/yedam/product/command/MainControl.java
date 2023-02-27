package com.yedam.product.command;

import java.io.Console;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.ProductVO;

public class MainControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//목록	서비스.java      이름 지정         서비스impl.java
				ProductService service = new ProductServiceImpl();
		 //기능  호출               이름지정          서비스.java에 추가한 이름
		
		List<ProductVO> list = service.productList();
		System.out.println("dddddd");
		for(ProductVO product : list) {
			System.out.println(product.getProdCode());
		}
		req.setAttribute("list", service.productList());
		return "main/main.tiles";
	}

}
