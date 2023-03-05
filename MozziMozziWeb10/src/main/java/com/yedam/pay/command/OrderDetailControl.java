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
import com.yedam.pay.vo.OrderItemVO;
import com.yedam.pay.vo.OrderVO;

public class OrderDetailControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String orderNo = req.getParameter("orderNo");
		
		PayService service = new PayServiceImpl();
		
		OrderVO order = new OrderVO();
		order = service.orderDetail(orderNo);
	
		List<OrderItemVO> orderItem = new ArrayList<>();
		orderItem = service.orderDetailItem(orderNo);
		
		req.setAttribute("orderInfo", order);
		req.setAttribute("orderItemList", orderItem);
		
		
		return "mypage/orderDetail.tiles";
	}

}
