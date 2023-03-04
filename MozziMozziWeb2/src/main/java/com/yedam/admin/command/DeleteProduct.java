package com.yedam.admin.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.admin.service.AdminService;
import com.yedam.admin.service.AdminServiceImpl;
import com.yedam.common.Command;


public class DeleteProduct implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//						productManage.jsp에서 삭제버튼에 id를 name로 줌
		String pCode = req.getParameter("pCode");
		
		AdminService service = new AdminServiceImpl();
		
		int r = Integer.parseInt(service.orderCancel(pCode));

		if(r > 0) {
			return "{\"retCode\":\"Success\"}.json";
		}else {
			return "{\"retCode\":\"Fail\"}.json";
		}
		
	}

}
