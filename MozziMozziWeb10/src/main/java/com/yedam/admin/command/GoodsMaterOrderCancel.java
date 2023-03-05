package com.yedam.admin.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.admin.service.AdminService;
import com.yedam.admin.service.AdminServiceImpl;
import com.yedam.admin.vo.AdminOrderVO;
import com.yedam.common.Command;
import com.yedam.member.vo.MemberVO;
import com.yedam.product.service.ProductService;
import com.yedam.product.service.ProductServiceImpl;
import com.yedam.product.vo.ProductVO;

public class GoodsMaterOrderCancel implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	    String orderCancel = req.getParameter("orderNo");

		AdminService service = new AdminServiceImpl();
		
		int r = service.orderCancel(orderCancel);
        System.out.println(r);
        if(r > 0) {
			return "{\"retCode\":\"Success\"}.json";
		}else {
			return "{\"retCode\":\"Fail\"}.json";
		}

	}
}