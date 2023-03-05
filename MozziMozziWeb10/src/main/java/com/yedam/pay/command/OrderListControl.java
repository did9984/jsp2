package com.yedam.pay.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.pay.service.PayService;
import com.yedam.pay.service.PayServiceImpl;
import com.yedam.pay.vo.OrderVO;

public class OrderListControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		
		List<OrderVO> orderList = new ArrayList<OrderVO>();
		PayService service = new PayServiceImpl();
		orderList = service.orderList(id);
		
		req.setAttribute("oderList", orderList);
		
		return "mypage/orderList.tiles";
		
	}

}
