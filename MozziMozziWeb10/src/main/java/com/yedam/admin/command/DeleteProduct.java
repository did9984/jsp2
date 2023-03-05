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
		
		int r = service.removeProduct(pCode);

		if(r > 0) {
			System.out.println("삭제성공");
			return "adminProductList.do";
		}else {
			System.out.println("삭제실패");
			return "admin/productManage.tiles";
		}
		
	}

}
