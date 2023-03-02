package com.yedam.admin.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.admin.service.AdminService;
import com.yedam.admin.service.AdminServiceImpl;
import com.yedam.common.Command;

public class GoodsmasterControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		AdminService service = new AdminServiceImpl();
		req.setAttribute("list", service.adminPordList());
		
		return "admin/Goodsmaster.tiles";
	}

}
