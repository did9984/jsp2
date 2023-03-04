package com.yedam.customer.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.customer.service.CustomerService;
import com.yedam.customer.service.CustomerServiceImpl;
import com.yedam.customer.vo.QnaVO;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.ProductVO;

public class CustomerQnaControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 목록 서비스.java 이름 지정 서비스impl.java
		CustomerService service = new CustomerServiceImpl();
		// 기능 호출 이름지정 서비스.java에 추가한 이름

		List<QnaVO> QnA = service.viewQnA();

		req.setAttribute("qnalist",QnA);
        System.out.println(QnA);
		return "customer/customerQnA.tiles";
	}

}
