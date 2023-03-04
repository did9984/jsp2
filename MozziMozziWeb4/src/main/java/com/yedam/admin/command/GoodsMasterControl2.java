package com.yedam.admin.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.admin.service.AdminService;
import com.yedam.admin.service.AdminServiceImpl;
import com.yedam.common.Command;

public class GoodsMasterControl2 implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		AdminService service = new AdminServiceImpl();
		
		String productName =req.getParameter("productName");
		
		req.setAttribute("orderList", service.orderList());
		
		req.setAttribute("serach", service.searchList(productName));
		
		return "admin/goodsmasterSearch.tiles";
	}

}
