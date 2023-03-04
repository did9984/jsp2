package com.yedam.product.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.ProductVO;

public class productListNormal implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//목록	서비스.java      이름 지정         서비스impl.java
				ProductService service = new ProductServiceImpl();
		 //기능  호출               이름지정          서비스.java에 추가한 이름
				List<ProductVO> list4 = service.productListnormal();
				req.setAttribute("list4", list4);
				return "product/productListMozziNormal.tiles";
			}

}
