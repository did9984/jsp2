<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

		<link rel="stylesheet" href="bootstrap/css/order.css">

		<style>
		.addr_style{
		 	background-color: orange;
		 	color: white;
		 	padding: 10px;
		 	width: 120px;
		 	line-height: 20px;
		}
		</style>
		<main>
			<div id="main_wrapper">
				<div class="title_wrapper">
					<h1 class="title" style="color : blue;">주문 완료</h1>
					<span class="description">주문하신 상품명 및 수량을 정확하게 확인해주세요.</span>
				</div>

				<section id="order_product">
					<h3 class="order_subtitle">상품정보</h3>
					<table class="horHead">
						<tr>
							<th colspan="2">상품정보</th>
							<th>상품수량</th>
							<th>상품금액</th>
							<th>배송상태</th>
							<c:choose> 
								<c:when test="${orderInfo.status eq '배송준비'}"> 
									
								</c:when>
								<c:when test="${orderInfo.status eq '배송완료'}">
									<th>리뷰작성</th>
								</c:when>
								<%-- <c:otherwise> ... </c:otherwise> --%>
							</c:choose>
							
						</tr>
							<c:forEach var="orderItem" items="${orderItemList}">
								<tr>
									<td>
										<a style="text-decoration-line: none;" href="productDetail.do?dduck=${orderItem.prodCode}">
											<img alt="제품사진" src="img/product/${orderItem.mainImage}">
										</a>
									</td>
									<td>
										<a style="margin: 0; text-decoration-line: none;" 
										  href="productDetail.do?dduck=${orderItem.prodCode}">${orderItem.prodName}</a>
										</td>
									<td>${orderItem.quantity}개</td>
									<td>${orderItem.itemPrice}원</td>
									<td>${orderInfo.status}</td>
									<c:choose> 
										<c:when test="${orderInfo.status eq '배송준비'}"> 
											
										</c:when>
										<c:when test="${orderInfo.status eq '배송완료'}">
											<td><input type="button" onclick = "location.href='revieWriteForm.do?orderNo=${orderItem.orderNo}&prodCode=${orderItem.prodCode}'" value="리뷰작성"></td>
										</c:when>
										<%-- <c:otherwise> ... </c:otherwise> --%>
									</c:choose>
									
								</tr>
							</c:forEach>
					</table>
				</section>

				<section id="order_member">
					<h3 class="order_subtitle">주문자 정보</h3>
					<table class="verHead">
						<tr>
							<th>보내는 분</th>
							<td>${orderInfo.userName}</td>
						</tr>
						<tr>
							<th>휴대폰</th>
							<td>${orderInfo.userPhone}</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>${orderInfo.userEmail}</td>
						</tr>
					</table>
				</section>

				<form name="orderFrm" method="post" action="#">

					<section id="order_delivery">
						<h3 class="order_subtitle">배송정보</h3>
						<table class="verHead">
							<tr>
								<th>수령인 이름</th>
								<td><span id = "addressee">${orderInfo.addressee}</span>
							</tr>
	
							<tr>
								<th>휴대폰</th>
								<td><span id="addressee_phone">${orderInfo.addresseePhone}</span>
							</tr>
	
							<tr>
								<th>배송주소</th>
								<td><span id="addressee_addr">${orderInfo.addresseeAddr}</span></td>
							</tr>
							<tr>
								<th>배송요청사항</th>
								<td><span id ="delivery_request">${orderInfo.deliveryRequest}</span></td>
							</tr>
						</table>
					</section>

					<section id="order_pay">
						<h3 class="order_subtitle">결제금액</h3>
						<table class="verHead">
							<tr>
								<th>상품금액</th>
								<td><span id="total">${orderInfo.totalPrice}</span>원</td>
							</tr>
							<tr>
								<th>배송비</th>
								<td><span>무료</span></td>
							</tr>
							<tr>
								<th>최종결재금액</th>
								<td><b><span id='final_total'>${orderInfo.totalPrice}</span></b>원
									<!-- <span id="total_point">구매 시 UtilMgr.intFormat(totalPrice)P 적립</span> -->
								</td>
							</tr>
							<!-- <tr>
                            <td></td>
                        </tr> -->
						</table>
					</section>

					<section id="order_howpay">
						<h3 class="order_subtitle">결제수단</h3>
						<table class="verHead">
							<tr>
								<th>카드결제</th>
								<td>카카오 페이<input type="radio" name="o_pay_method" id="kakao_pay" value="카카오페이" checked disabled></td>
							</tr>
						</table>
					</section>

					<section id="order_private">
						<h3 class="order_subtitle">개인정보 수집/제공*</h3>
						<table class="verHead">
							<tr>
								<th>개인정보 수집/제공*</th>
								<th></th>
							</tr>
							<tr>
								<td style="display: flex;">
									<span style="flex: 3;">필수동의 결재진행</span>
									<input style="flex: 1;" id="agreement" type="checkbox" checked disabled>
								</td>
								<td></td>
							</tr>
							<tr>
								<td>개인정보 수집/이용동의(필수)</td>
								<td><a href="#">약관확인></a></td>
							</tr>
							<tr>
								<td>결재대행 서비스 약관 동의(필수)</td>
								<td><a href="#">약관확인></a></td>
							</tr>
						</table>
						<div class="order_btn_wrapper">
							<input type="button" class="btn order_submit" onclick="location.href='orderList.do?id=${logId}'" value="주문내역목록">
							<input type="button" class="btn order_submit" onclick="location.href='main.do'" value="메인페이지">
						</div>
					</section>
				</form>
			</div>
		</main>