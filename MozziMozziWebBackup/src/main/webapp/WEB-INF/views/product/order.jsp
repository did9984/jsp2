<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<link rel="stylesheet" href="bootstrap/css/order.css">
<script>
	payCheck.addEventListener('click',()=>{
	
		var listVar = $('input[name=o_pay_method]:checked').val();
		
		if(listVar == true){
			agreement();
		}else {
			alert("카카오페이를 선택해주세요");
		}
	});
	
	
	function agreement() {
		var IMP = window.IMP; // 생략가능
		IMP.init('imp23211054'); 
		// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
		// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
		IMP.request_pay({
			pg: 'kakaopay.TC0ONETIME',
			pay_method: 'kakaopay',
			merchant_uid: 'merchant_' + new Date().getTime(),
			/* 
			 *  merchant_uid에 경우 
			 *  https://docs.iamport.kr/implementation/payment
			 *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
			 */
			name: '그대는 너무 이뻐',
			// 결제창에서 보여질 이름
			// name: '주문명 : ${auction.a_title}',
			// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
			amount: 333333,
			// amount: ${bid.b_bid},
			// 가격 
			buyer_name: '선아',
			// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
			// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
			
		    buyer_tel: "010-4242-4242",
		    buyer_addr: "서울특별시 강남구 신사동",
			buyer_postcode: '123-456',
			}, function (rsp) {
				console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '결제 금액 : ' + rsp.paid_amount;
				// success.submit();
				// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
				// 자세한 설명은 구글링으로 보시는게 좋습니다.
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
	});
</script>
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
				<%-- <%ProductBean pbean=null; CartBean cbean=null; for(int i=0; i<goods.size(); i++){ /* 물건 하나
                        구매할때*/ if(flag.equals("oneProduct")){ pbean=(ProductBean)goods.get(i);
                        o_qty=Integer.parseInt(request.getParameter("quantity")); /* 장바구니 구매할 때 */ }else
                        if(flag.equals("cart")){ cbean=(CartBean)goods.get(i); o_qty=cbean.getC_qty();
                        pbean=pMgr.getProduct(cbean.getP_code()); } price=pbean.getP_price(); totalPrice +=price *
                        o_qty; countPart=goods.size(); %> --%>
				<c:forEach var="cartItem" items="${orderList}">
					<tr>
						<td><img alt="제품사진" src="img/product/${cartItem.mainImage}">
							<!-- <img alt="제품사진" src="${pageContext.request.contextPath}/img/product/pbean.getP_main_pht_name()"> -->
						</td>
						<td><a>${cartItem.prodName}</a></td>
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
						<td><input name="addressee" value=""></td>
					</tr>

					<tr>
						<th>휴대폰</th>
						<td><input name="addressee_phone" value=""></td>
					</tr>

					<tr>
						<th>배송주소</th>
						<td><input id="addressee_addr" name="addressee_addr"
							readonly="readonly"> <input class="btn" type="button"
							id="addr_btn" value="주소검색"></td>
					</tr>
					<tr>
						<th>상세주소</th>
						<td><input id="address_detail" name="address_detail"
							style="width: 300px"></td>
					</tr>

					<tr>
						<th>배송요청사항</th>
						<td><textarea name="delivery_request" rows="5" cols="50"></textarea></td>
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
						<td><b><span id='final_total'></span><b>원 <!-- <span id="total_point">구매 시 UtilMgr.intFormat(totalPrice)P 적립</span> --></td>
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
                                <input type=radio name="o_pay_method" value="신용카드" onclick='paymentMethod(this.value);'
                                    checked>휴대폰
                                <input type=radio name="o_pay_method" value="휴대폰" onclick='paymentMethod(this.value);'>
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
						<td>카카오 페이<input type=radio name="o_pay_method" value="카카오페이"></td>
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
						<td style="display: flex;"><span style="flex: 2;">필수동의
								결재진행</span> <input style="flex: 1;" id="agreement" type=checkbox>
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
				<input type="hidden" name="o_id" value="o_id"> <input
					type="hidden" name="o_status" value="o_status"> <input
					type="hidden" name="countPart" value="countPart">
				<%-- <%for(int i=0; i<countPart;i++){ %>
                        <input type="hidden" name="o_qty" value="<%=o_qty%>">
                        <input type="hidden" name="p_code" value="<%=p_code%>">
                        <%} %> --%>
				<div class="order_btn_wrapper">
					<input type="button" class="btn order_submit" id="payCheck" value="결제하기">
					<input type="submit" class="btn order_submit" value="취소">
				</div>
			</section>
		</form>
	</div>
</main>

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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


<script>  
	 // 결제 총금액 계산
	 
     let total = 0; // 총금액
     let list = [];
     
     <c:forEach var="orderItem" items="${orderList}">
     	list.push("${orderItem.cartPrice}");
     </c:forEach>
     
     for(let i = 0 ; i < list.length; i++){
    	 total = total + parseInt(list[i]);
     }
     
     $('#total').text(total);
     $('#final_total').text(total);
        
  </script>