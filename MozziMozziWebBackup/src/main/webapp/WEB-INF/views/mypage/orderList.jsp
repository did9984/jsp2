<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


    <link rel="stylesheet" type="text/css" href="/css/order/mypage_orderlist.css">

    <script src="https://kit.fontawesome.com/115bcf1f34.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>


    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="/online-shopping-mall/js/top.js"></script>

    <link rel="stylesheet" type="text/css" href="/css/order/mypage_style.css">
    <script src="https://kit.fontawesome.com/115bcf1f34.js" crossorigin="anonymous"></script>
    <!-- top.jsp 끝 -->



    <!-- top, bottom 제외 페이지 전체-->
    <div id="main">
        <!-- 버튼 메뉴 + mypage 내용 wrapper (flex container) -->
        <div id="btn_mypage_wrapper">


            <!-- 사이드 메뉴 영역 -->
            <div id="mypage_side">

                <div id="section">
                    마이페이지
                </div>


                <!-- 메뉴 부분 -->
                <div id="mypage_btn_wrapper">
                    <ul>
                        <a id="btn_first" href="#">
                            <li>
                                <span class="text">주문목록</span>

                                <!-- default 아이콘 -->
                                <span class="icon"><i class="fas fa-chevron-left"></i></span>

                                <!-- mypage_orderlist.jsp / order_view.jsp :: -->
                                <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->

                            </li>
                        </a>
                        <a href="#">
                            <li>
                                <span class="text">리뷰관리</span>

                                <!-- default 아이콘 -->
                                <span class="icon"><i class="fas fa-chevron-left"></i></span>

                                <!-- mypage_review.jsp / review_write.jsp :: -->
                                <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->

                            </li>
                        </a>
                        <a href="reviewManage.do">
                            <li>
                                <span class="text">My문의</span>

                                <!-- default 아이콘 -->
                                <span class="icon"><i class="fas fa-chevron-left"></i></span>

                                <!-- mypage_point.jsp :: -->
                                <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->

                            </li>
                        </a>
                        <a id="btn_last" href="myInfoCheck.do">
                            <li>
                                <span class="text">회원정보</span>

                                <!-- default 아이콘 -->
                                <span class="icon"><i class="fas fa-chevron-left"></i></span>

                                <!-- myinfo_check.jsp / mypage_myinfo.jsp :: -->
                                <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->

                            </li>
                        </a>
                        <a id="btn_last" href="myInfoDel.do">
                            <li>
                                <span class="text">회원탈퇴</span>

                                <!-- default 아이콘 -->
                                <span class="icon"><i class="fas fa-chevron-left"></i></span>

                                <!-- myinfo_check.jsp / mypage_myinfo.jsp :: -->
                                <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                            </li>
                        </a>
                    </ul>
                </div>


            </div>








            <!-- mypage 내용 영역 -->


            <!-- orderlist.jsp 작업부분 !! -->
            <!-- orderlist.jsp 작업부분 !! -->
            <!-- orderlist.jsp 작업부분 !! -->
            <!-- orderlist.jsp 작업부분 !! -->
            <!-- orderlist.jsp 작업부분 !! -->

            <div id="mypage">

                <h1 class="title">주문내역</h1>

                <table class="mypage_table">
                    <tr id="column_tr">
                        <th>주문번호</th>
                        <th>제품명</th>
                        <th>주문날짜</th>
                        <th>주문상태</th>
                        <th>주문방법</th>
                    </tr>
                    <!-- 주문내역 가져오기 -->

                    <tr>
                        <td class="btn_td"><a href="#">1</a></td>
                        <td class="btn_td"><a href="#">[제주특산품] 오메기떡</a></td>
                        <td>2019-12-11</td>
                        <td>결제완료</td>
                        <td>카드</td>
                    </tr>

                    <tr>
                        <td>1</td>
                        <td>[한정판매]시루떡</td>
                        <td>2019-12-11</td>
                        <td>결제완료</td>
                        <td>카드</td>
                    </tr>


                </table>
            </div>

            <!-- orderlist.jsp 작업부분 !! -->
            <!-- orderlist.jsp 작업부분 !! -->
            <!-- orderlist.jsp 작업부분 !! -->
            <!-- orderlist.jsp 작업부분 !! -->
            <!-- orderlist.jsp 작업부분 !! -->


        </div>

    </div>

    <link rel="stylesheet" type="text/css" href="/css/index/bottom.css">
    </body>

    </html>