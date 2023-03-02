package com.yedam.pay.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.pay.service.PayService;
import com.yedam.pay.service.PayServiceImpl;
import com.yedam.pay.vo.OrderItemVO;
import com.yedam.pay.vo.OrderVO;

public class KakaoPayControl implements Command{

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*
		 orderNo : orderNo, userId : userId, totalPrice : totalPrice, payMethod : payMethod,
		 addressee : addressee, addresseeAddr : addresseeAddr, addresseePhone : addresseePhone, deliveryRequest : deliveryRequest,
		 codeList : codeList, priceList : priceList, quantityList : quantityList
		 */
		
		String orderNo = req.getParameter("orderNo"); // 주문번호
		String userId = req.getParameter("userId"); // 유저 ID
		int totalPrice = Integer.parseInt(req.getParameter("totalPrice")); // 총 결제 금액
		String payMethod = req.getParameter("payMethod"); // 결제 방법
		
		String addressee = req.getParameter("addressee"); // 배송 받을 사람 이름
		String addresseeAddr = req.getParameter("addresseeAddr"); // 배송받을사람 주소
		String addresseePhone = req.getParameter("addresseePhone"); // 배송 받을사람 전화번호
		String deliveryRequest = req.getParameter("deliveryRequest"); // 요청사항
		
		String codeList = req.getParameter("codeList"); // 주문한 상품코드들
		String priceList = req.getParameter("priceList"); // 가격 * 수량들
		String quantityList = req.getParameter("quantityList"); // 주문한 상품 수량들
		String cartIdList = req.getParameter("cartIdList"); // 카트 idemf
		
		String[] prodCode = codeList.split(",");
		String[] quantity = quantityList.split(",");
		String[] cartPrice = priceList.split(",");
		String[] cartId = cartIdList.split(",");
		
		
		OrderVO order = new OrderVO();
		order.setOrderNo(orderNo);
		order.setUserId(userId);
		order.setTotalPrice(totalPrice);
		order.setPayMethod(payMethod);
		
		order.setAddressee(addressee);
		order.setAddresseeAddr(addresseeAddr);
		order.setAddresseePhone(addresseePhone);
		order.setDeliveryRequest(deliveryRequest);
		
		// product_order 테이블 insert쿼리 실행
		
		PayService service = new PayServiceImpl();
		int r = service.orderAdd(order);
		
		// ==============================================
		
		OrderItemVO orderItem = new OrderItemVO();
		int r2 = 0;
		int r3 = 0;
		int r4 = 0;
		
		for(int i = 0; i < prodCode.length; i++) {
			orderItem.setOrderNo(orderNo);
			orderItem.setProdCode(prodCode[i]);
			orderItem.setQuantity(Integer.parseInt(quantity[i]));
			orderItem.setItemPrice(Integer.parseInt(cartPrice[i]));
			
			// product_orderItem 테이블 insert쿼리 실행
			r2 = service.orderItemAdd(orderItem);
			
			// product 테이블의 판매량(sales) update 쿼리 실행 => +1 로설정
			r3 = service.salesUpdate(prodCode[i]);
	
			// cart에 담겨져있는거 삭제 쿼리 실행  (cartId를 이용하여)
			r4 = service.deleteCart(Integer.parseInt(cartId[i]));
		}
		
		
		// 주문테이블, 주문-상품테이블 insert 성공 , 상품테이블 판매량 update 성공, 장바구니테이블 결제완료시 삭제 성공
		if(r == 1 && r2 == 1 && r3 == 1 && r4 == 1 ) {  
			return "{\"retCode\":\"Success\"}.json";
		}else { // 장바구니 추가시 에러발생
			System.out.println("에러!!!!!!!!!!!");
			return "{\"retCode\":\"Fail\"}.json";
		}
		

		
	}

}
