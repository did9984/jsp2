<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <link rel="stylesheet" href="bootstrap/css/order.css">



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
                        <tr>
                            <td>
                                <img alt="제품사진" src="../img/product/fus_main1.jpg">
                                <!-- <img alt="제품사진" src="${pageContext.request.contextPath}/img/product/pbean.getP_main_pht_name()"> -->
                            </td>
                            <td><a>pbean.getP_name()</a></td>
                            <td>o_qty개</td>
                            <td>UtilMgr.intFormat(price)원</td>
                        </tr>
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
                            <td>mName</td>
                    </tr>
                    <tr>
                        <th>휴대폰 </th>
                        <td>mContact</td>
                    </tr>
                    <tr>
                        <th>이메일 </th>
                        <td>mEmail</td>
                    </tr>
                </table>

            </section>

            <form name="orderFrm" method="post" action="mypage_orderProc.jsp">

                <section id="order_delivery">
                    <h3 class="order_subtitle">배송정보</h3>
                    <table class="verHead">
                        <%-- <% Vector<OrderBean> olist = oMgr.getOrder(o_id);
                            OrderBean order = olist.get(0); //최근 주문 정보
                            %> --%>
                            <tr>
                                <th>배송주소</th>
                                <td>
                                    <input id="user_addr" name="user_addr" readonly="readonly">
                                    <input class="btn" type="button" id="addr_btn" value="주소검색">
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input id="address_detail" name="address_detail"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <input id="zipcode" name="zipcode" readonly="readonly">
                                </td>
                            </tr>
                            <tr>
                                <th>수령인 이름</th>
                                <td><input name="o_recpt_name" value="order.getO_recpt_name()"></td>
                            </tr>
                            <tr>
                                <th>휴대폰</th>
                                <td><input name="o_recpt_contact" value="order.getO_recpt_contact()"></td>
                            </tr>

                            <tr>
                                <th>배송요청사항</th>
                                <td><textarea name="o_del_msg" rows="5" cols="50"></textarea></td>
                            </tr>
                    </table>
                </section>

                <section id="order_pay">
                    <h3 class="order_subtitle">결제금액</h3>
                    <table class="verHead">
                        <tr>
                            <th>상품금액&nbsp;&nbsp;&nbsp;</th>
                            <td><input name="o_prod_amount" readonly size="13" value="UtilMgr.intFormat(totalPrice)">원
                            </td>
                        </tr>
                        <tr>
                            <th>배송비&nbsp;&nbsp;&nbsp;</th>
                            <td><input name="o_del_fee" readonly size="13" value="UtilMgr.intFormat(shippingPrice)">원
                            </td>
                        </tr>
                        <tr>
                            <th>최종결재금액&nbsp;&nbsp;&nbsp;</th>
                            <td>
                                <input name="o_total_amount" readonly size="13"
                                    value="UtilMgr.intFormat(totalPrice+shippingPrice)">원
                                <span id="total_point">구매 시 UtilMgr.intFormat(totalPrice)P 적립</span>
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
                            <th>일반결재 &nbsp;&nbsp;&nbsp;</th>
                            <td> 신용카드
                                <input type=radio name="o_pay_method" value="신용카드" onclick='paymentMethod(this.value);'
                                    checked>
                                &nbsp;&nbsp;&nbsp; 휴대폰
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
                        </tr>
                        <tr>
                            <th>간편결제 &nbsp;&nbsp;&nbsp;</th>
                            <td>카카오 페이<input type=radio name="o_pay_method" value="카카오페이"
                                    onclick='paymentMethod(this.value);'></td>
                        </tr>
                    </table>
                </section>

                <section id="order_private">
                    <h3 class="order_subtitle">개인정보 수집/제공*</h3>
                    <table class="verHead">
                        <tr>
                            <th>개인정보 수집/제공*</th>
                        </tr>
                        <tr>
                            <td><input id="agreement" type=checkbox value=1>결재진행 필수동의</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;개인정보 수집/이용동의(필수)</td>
                            <td>&nbsp;&nbsp;&nbsp;<a href="#">약관확인></a></td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;결재대행 서비스 약관 동의(필수)</td>
                            <td>&nbsp;&nbsp;&nbsp;<a href="#">약관확인></a></td>
                        </tr>
                    </table>
                    <input type="hidden" name="o_id" value="o_id">
                    <input type="hidden" name="o_status" value="o_status">
                    <input type="hidden" name="countPart" value="countPart">
                    <%-- <%for(int i=0; i<countPart;i++){ %>
                        <input type="hidden" name="o_qty" value="<%=o_qty%>">
                        <input type="hidden" name="p_code" value="<%=p_code%>">
                        <%} %> --%>
                            <div class="order_btn_wrapper">
                                <input type="submit" class="btn order_submit" value="결제하기" onclick="agreement()">
                                <input type="submit" class="btn order_submit" value="취소">
                            </div>
                </section>
            </form>
        </div>
    </main>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        var width = 500; //팝업의 너비
        var height = 500; //팝업의 높이
        window.onload = function () {
            document.getElementById("addr_btn").addEventListener("click", function () { //주소입력칸을 클릭하면
                //카카오 지도 발생
                new daum.Postcode({

                    oncomplete: function (data) { //선택시 입력값 세팅
                        document.getElementById("user_addr").value = data.address; // 주소 넣기
                        document.getElementById("zipcode").value = date.Postcode
                        document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
                    },
                    width: width, //생성자에 크기 값을 명시적으로 지정해야 합니다.
                    height: height
                }).open({
                    left: (window.screen.width / 2) - (width / 2),
                    top: (window.screen.height / 2) - (height / 2)
                });
            });
        }
    </script>