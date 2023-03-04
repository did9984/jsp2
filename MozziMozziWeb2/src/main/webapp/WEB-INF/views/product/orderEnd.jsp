<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<link rel="stylesheet" href="bootstrap/css/order_end.css">

	<main id="end_wrapper">
		<div id="end_modal">
			<!-- <div id="end_modal_wrapper"> -->
			<header>
				<div id="end_modal_icon">
					<i class="fas fa-ellipsis-h"></i>
					<i class="fas fa-truck"></i>
				</div>
				<b><span id="name">${order.userName}</span></b><span>님의 주문이 완료되었습니다.</span>
			</header>
			<div id="end_modal_summ">
				<span style="margin:0 0 10px 0; color:black;">주문번호 : ${order.orderNo}</span>
				<p>구매한 제품 : ${order.buyProdname}</p>
				<b><h5 style="color:red;">결제금액 : ${order.totalPrice}원</h5></b>
			</div>
			<div id="end_modal_btn_wrapper">
				<a class="btn" href="main.do"> 홈으로 이동 </a>
				<a class="btn" href="orderList.do?id=${logId}"> 주문내역으로 이동 </a>
			</div>
			<!-- </div> -->
		</div>

	</main>
	</div> <!--  #btn_mypage_wrapper (버튼메뉴 + mypage) : mypage_side.jsp 에서 열림-->
	</div> <!-- #main (상단요약 + 버튼 + mypage) : mypage_side.jsp 에서 열림-->
	