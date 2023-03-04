package com.yedam.pay.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.pay.service.PayService;
import com.yedam.pay.service.PayServiceImpl;
import com.yedam.pay.vo.OrderVO;

public class OrderEndControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("orderNo");
		
		PayService service = new PayServiceImpl();
		OrderVO order = service.orderEnd(id);
		req.setAttribute("order", order);
		
		return "product/orderEnd.tiles";
		
	}

}
