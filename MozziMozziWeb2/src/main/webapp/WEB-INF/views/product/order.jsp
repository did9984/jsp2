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
					<h1 class="title">주문서</h1>
					<span class="description">주문하실 상품명 및 수량을 정확하게 확인해주세요.</span>
				</div>


				<section id="order_product">
					<h3 class="order_subtitle">상품정보</h3>
					<table class="horHead">
						<tr>
							<th colspan="2">상품정보</th>
							<th>상품수량</th>
							<th>상품금액</th>
						</tr>
						<%-- <%ProductBean pbean=null; CartBean cbean=null; for(int i=0; i<goods.size(); i++){ /* 물건 하나 구매할때*/
							if(flag.equals("oneProduct")){ pbean=(ProductBean)goods.get(i);
							o_qty=Integer.parseInt(request.getParameter("quantity")); /* 장바구니 구매할 때 */ }else if(flag.equals("cart")){
							cbean=(CartBean)goods.get(i); o_qty=cbean.getC_qty(); pbean=pMgr.getProduct(cbean.getP_code()); }
							price=pbean.getP_price(); totalPrice +=price * o_qty; countPart=goods.size(); %> --%>
							<c:forEach var="cartItem" items="${orderList}">
								<tr>
									<td>
										<a style="text-decoration-line: none;" href="productDetail.do?dduck=${cartItem.prodCode}">
											<img alt="제품사진" src="img/product/${cartItem.mainImage}">
										</a>
									</td>
									<td>
										<%-- <p style="margin: 0; font-size: 10px;">${cartItem.prodCode}</p><br> --%>
										<a style="margin: 0; text-decoration-line: none;" 
										  href="productDetail.do?dduck=${cartItem.prodCode}">${cartItem.prodName}</a>
										</td>
									<td>${cartItem.cartQuantity}개</td>
									<td>${cartItem.cartPrice}원</td>
								</tr>
							</c:forEach>
							<%-- <% } %> --%>
					</table>
				</section>

				<section id="order_member">
					<h3 class="order_subtitle">주문자 정보</h3>
					<table class="verHead">

						<tr>
							<%-- <% MemberBean mbean=mMgr.getMember(o_id); String mName=mbean.getNAME(); String
								mContact=mbean.getContact(); String mEmail=mbean.getEmail(); %> --%>
								<th>보내는 분</th>
								<td>${orderList[0].userName}</td>

						</tr>
						<tr>
							<th>휴대폰</th>
							<td>${orderList[0].userPhone}</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>${orderList[0].userEmail}</td>
						</tr>
					</table>

				</section>

				<form name="orderFrm" method="post" action="#">

					<section id="order_delivery">
						<h3 class="order_subtitle">배송정보</h3>
						<table class="verHead">
							<%-- <% Vector<OrderBean> olist = oMgr.getOrder(o_id);
								OrderBean order = olist.get(0); //최근 주문 정보
								%> --%>
								<tr>
									<th>수령인 이름</th>
									<td><input name="addressee" id = "addressee" value=""></td>
								</tr>

								<tr>
									<th>휴대폰</th>
									<td><input id="addressee_phone" name="addressee_phone" value=""></td>
								</tr>

								<tr>
									<th>배송주소</th>
									<td><input id="addressee_addr" name="addressee_addr" readonly="readonly">
										<input class="addr_style" type="button"
											id="addr_btn" value="주소검색">
									</td>
								</tr>
								<tr>
									<th>상세주소</th>
									<td><input id="address_detail" name="address_detail" style="width: 300px"></td>
								</tr>

								<tr>
									<th>배송요청사항</th>
									<td><textarea class="textarea_css" id ="delivery_request" name="delivery_request" rows="10" cols="50"></textarea></td>
								</tr>
						</table>
					</section>

					<section id="order_pay">
						<h3 class="order_subtitle">결제금액</h3>
						<table class="verHead">
							<tr>
								<th>상품금액</th>
								<td><span id="total"></span>원</td>
							</tr>
							<tr>
								<th>배송비</th>
								<td><span>무료</span></td>
							</tr>
							<tr>
								<th>최종결재금액</th>
								<td><b><span id='final_total'></span></b>원
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
							<!-- <tr>
                            <th>일반결재</th>
                            <td> 신용카드
                                <input type="radio" name="o_pay_method" value="신용카드" onclick='paymentMethod(this.value);'
                                    checked>휴대폰
                                <input type="radio" name="o_pay_method" value="휴대폰" onclick='paymentMethod(this.value);'>
                            </td>
                        </tr>
                        <tr id='tr1'>
                            <td>
                                <select id="card">
                                    <option value="0">카드를 선택해주세요.</option>
                                    <option value="1">현대(무이자)</option>
                                    <option value="2">신한</option>
                                    <option value="3">비씨</option>
                                    <option value="4">NH</option>
                                    <option value="5">삼성</option>
                                </select>
                                <select id="installment">
                                    <option value="0">일시불</option>
                                    <option value="1">2개월 할부</option>
                                    <option value="2">3개월 할부</option>
                                    <option value="3">4개월 할부</option>
                                    <option value="4">5개월 할부</option>
                                    <option value="5">6개월 할부</option>
                                </select>
                            </td>
                        </tr>
                        <tr id='tr2' style="display:none">
                            <td></td>
                            <td><input name="cellphone1" size="13" placeholder="010-1234-1234">
                            <td>
                        </tr> -->
							<tr>
								<th>카드결제</th>
								<td>카카오 페이<input type="radio" name="o_pay_method" id="kakao_pay" value="카카오페이" checked></td>
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
									<span style="flex: 2;">필수동의 결재진행</span>
									<input style="flex: 1;" id="agreement" type="checkbox">
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
							<input type="button" class="btn order_submit" id="payCheck" value="결제하기">
							<input type="button" class="btn order_submit" id="cancelBtn" value="취소">
						</div>
					</section>
				</form>
			</div>
		</main>

		<!-- 결제 총금액 계산 -->
		<script>
		
			let total = 0; // 총금액
			let list = [];

			<c:forEach var="orderItem" items="${orderList}">
				list.push("${orderItem.cartPrice}");
			</c:forEach>

			for (let i = 0; i < list.length; i++) {
				total = total + parseInt(list[i]);
			}

			$('#total').text(total);
			$('#final_total').text(total);
			
		</script>

		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
			var width = 500; //팝업의 너비
			var height = 500; //팝업의 높이
			window.onload = function () {
				document.getElementById("addr_btn").addEventListener("click", function () { //주소입력칸을 클릭하면
					//카카오 지도 발생
					new daum.Postcode({

						oncomplete: function (data) { //선택시 입력값 세팅
							document.getElementById("addressee_addr").value = data.address; // 주소 넣기
							document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
						},
						width: width, //생성자에 크기 값을 명시적으로 지정해야 합니다.
						height: height
					}).open({
						// 창이 뜰때의 위치를 중앙으로 맞춘다
						left: (window.screen.width / 2) - (width / 2),
						top: (window.screen.height / 2) - (height / 2)
					});
				});
			}
		</script>
		
		<!-- 결제 -->
		<script>
		
		<c:forEach var="orderItem" items="${orderList}">
			list.push("${orderItem.cartPrice}");
		</c:forEach>

		$('#payCheck').click(function () {
			var listVar = $('input[id=kakao_pay]').is(":checked");
			var agree = $('input[id=agreement]').is(":checked");
			console.log(listVar);
			if ((listVar == true)&&(agree== true)) {
				agreement();
			} else if((listVar == true)&&(agree== false)){
				alert("개인정보 수집을 동의해주세요");
			}else {
				alert("카카오페이를 선택해주세요");
			}
		});

		let listSize = '${orderList.size()}'
		listSize = parseInt(listSize)-1;
		console.log(listSize);
		
		function agreement() {
			var IMP = window.IMP; // 생략가능
			IMP.init('imp23211054');
			// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
			// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
			IMP.request_pay({
				pg: 'kakaopay.TC0ONETIME',
				pay_method: 'kakaopay',
				merchant_uid: new Date().getTime(),
				/* 'merchant_' + 
				 *  merchant_uid에 경우 
				 *  https://docs.iamport.kr/implementation/payment
				 *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
				 */
				name: '${orderList[0].prodName} 외 '+ listSize +'건',
				// 결제창에서 보여질 이름
				// name: '주문명 : ${auction.a_title}',
				// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
				amount: $('#final_total').text(),
				// amount: ${bid.b_bid},
				// 구매가격 
				buyer_name: '${orderList[0].userName}',
				// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
				// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.

				buyer_tel: "${orderList[0].userPhone}",
				buyer_addr: $('#addressee_addr').val() + " " + $('#address_detail').val(),
				buyer_postcode: '123-456',
				
			}, function (rsp) {
				
				console.log(rsp);
				
				if (rsp.success) {
					
					var msg = '결제가 완료되었습니다.';
					msg += '결제 금액 : ' + rsp.paid_amount;
					
					let orderNo = rsp.merchant_uid; // 주문번호	
					let userId = '${logId}'; // 주문자 id
					let totalPrice = rsp.paid_amount; // 총 결제 가격
					let payMethod = rsp.pg_provider; // 결제방법
					let buyProdName = rsp.name; //구매한 상품명들 ( ex. 찹쌀떡 외 2건 ) 
					
					let addressee = $('#addressee').val(); // 배송받을 사람 이름
					let addresseeAddr = rsp.buyer_addr; // 배송받을 주소
					let addresseePhone = $('#addressee_phone').val(); // 배송받을 사람 번호
					let deliveryRequest = $('#delivery_request').val(); // 배송 요청사항
					
					let codeList = "";
					let priceList = "";
					let quantityList = "";
					let cartIdList = "";
					let prodNameList = "";
					
					<c:forEach var="orderItem" items="${orderList}">
						codeList = codeList + "${orderItem.prodCode},";
						priceList = priceList + "${orderItem.cartPrice},";
						quantityList = quantityList + "${orderItem.cartQuantity},";
						cartIdList = cartIdList + "${orderItem.cartId},";
						prodNameList = prodNameList + "${orderItem.prodName},";
					</c:forEach>
					
					// ======================================================================
					/* console.log("orderNo : " + orderNo);
					console.log("userId : " + userId);
					console.log("totalPrice : " + totalPrice);
					console.log("payMethod : " + payMethod);
					console.log("buyProdName : " + buyProdName);
					
					console.log("addressee : " + addressee);
					console.log("addresseeAddr : " + addresseeAddr);
					console.log("addresseePhone : " + addresseePhone);
					console.log("deliveryRequest : " + deliveryRequest);
					
					console.log("codeList : " + codeList);
					console.log("priceList : " + priceList);
					console.log("quantityList : " + quantityList);
					console.log("cartIdList : " + cartIdList);
					console.log("prodNameList : " + prodNameList); */
					// ======================================================================
						
					$.ajax({
			          url: 'kakaoPay.do',
			          method: 'post', // get , put , post 가능함
			          data: { orderNo : orderNo, userId : userId, totalPrice : totalPrice, payMethod : payMethod, buyProdName : buyProdName,
			        	  	  addressee : addressee, addresseeAddr : addresseeAddr, addresseePhone : addresseePhone, deliveryRequest : deliveryRequest,
			        	      codeList : codeList, priceList : priceList, quantityList : quantityList, cartIdList : cartIdList, prodNameList : prodNameList}, // 쿼리스트링
			          success: function (result) {
			            if (result.retCode == 'Success') {
			              alert("결제가 완료되었습니다!");
			              window.location.assign("orderEnd.do?orderNo="+orderNo);
			            } else {
			              alert("결제 오류!! 장바구니 사이트로 이동합니다");
			              window.location.assign("cart.do?id=${logId}");
			            }
			          },
			          error: function (reject) {
			            console.log(reject);
			            alert("결제 오류!! 장바구니 사이트로 이동합니다");
			            window.location.assign("cart.do?id=${logId}");

			          }
			        })
			        
					// success.submit();
					// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
					// 자세한 설명은 구글링으로 보시는게 좋습니다.
					
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
					alert("결제 오류!! 장바구니 사이트로 이동합니다");
		            window.location.assign("cart.do?id=${logId}");
				}
				//alert(msg);
			});
		}
		
		// 취소 버튼을 눌렀을때 메인페이지로 이동
		$('#cancelBtn').click(function(){
			alert('주문이 취소되었습니다. \n메인페이지로 이동합니다.');
			location.href = 'main.do';
			
		});
		
		</script>	
		
		