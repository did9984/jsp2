<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://kit.fontawesome.com/79457743d6.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>






<!--<!DOCTYPE html>
<html>
	<head>-->
<meta charset="UTF-8">

<link rel="stylesheet" type="text/css" href="/../css/reset.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/admin_style.css">
<link rel="stylesheet" href="/../css/top.css">
<script src="https://kit.fontawesome.com/115bcf1f34.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<!--</head>
	<body> -->
<link rel="stylesheet" href="css/admin_style.css">
<div id="wrap"
	style="display: none; border: 1px solid #DDDDDD; width: 500px; margin-top: 500px; margin-left: 200px, z-index: 200"></div>
<div style="height: 10px;"></div>

<!--전체 페이지 Wrapper-->


<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="/online-shopping-mall/js/top.js"></script>



<style>
.mgr_table td input, .mgr_table td select {
	padding: 10px;
	border: 1px solid #dcdbde;
	border-radius: 3px;
	margin-left: 5px;
	margin-right: 5px;
	width: 130px;
}

td {text-la
	
}
</style>



<link rel="stylesheet" type="text/css" href="css/admin_style.css">
<script src="https://kit.fontawesome.com/115bcf1f34.js"
	crossorigin="anonymous"></script>


<!-- top, bottom 제외 페이지 전체-->
<div id="main">
	<div id="btn_manager_wrapper">
		<!-- (버튼메뉴 + manager) -->

		<div id="admin_side">

			<div id="section">관리자모드</div>

			<!-- 메뉴 부분 -->
			<div id="manager_btn_wrapper">
				<ul>

					<a href="memberList.do">
						<li><span class="text">회원관리</span> <!-- default 아이콘 --> <span
							class="icon"><i class="fas fa-chevron-left"></i></span> <!-- member_list.jsp / member_view.jsp :: -->
							<!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->

					</li>
					</a>
					<a href="adminProductAdd.do">
						<li><span class="text">상품등록</span> <!-- default 아이콘 --> <span
							class="icon"><i class="fas fa-chevron-left"></i></span> <!-- order_list.jsp / order_view.jsp :: -->
							<!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->

					</li>
					</a>
					<a href="adminProductList.do">
						<li><span class="text">상품목록</span> <!-- default 아이콘 --> <span
							class="icon"><i class="fas fa-chevron-left"></i></span> <!-- goods_master.jsp, goods_insert.jsp, goods_view.jsp, goods_stock.jsp :: -->
							<!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->

					</li>
					</a>
					<a href="goodsmaster.do">
						<li><span class="text">주문관리</span> <!-- default 아이콘 --> <span
							class="icon"><i class="fas fa-chevron-left"></i></span> <!-- 접속관리 페이지 누락됨 :: -->
							<!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->

					</li>
					</a>
					<a href="reviewListManage.do">
						<li><span class="text">리뷰관리</span> <!-- default 아이콘 --> <span
							class="icon"><i class="fas fa-chevron-left"></i></span> <!-- qna_list.jsp / qna_view.jsp :: -->
							<!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->

					</li>
					</a>
				</ul>
			</div>
		</div>



		<div id="btn_manager_wrapper">
			<!-- (버튼메뉴 + manager) -->





			<!--</div>   #btn_manager_wrapper (버튼메뉴 + manager) : 하위 페이지에서 닫아야함-->

			<!--</div>  #main (상단요약 + 버튼 + manager) : 하위페이지에서 닫아야함-->




			<div id="manager">

				<h1 class="title">전체주문관리</h1>

				<form name="listFrm">
					<input type="hidden" name="reload" value="true">
				</form>


				<form action="searchResult.do" method="get" id="searchid">

					<input type="hidden" value="0">



					<table class="mgr_table verHead">
						<tr>
							<th>제품명</th>
							<td><input name="OrderSearch" value=""> <!-- <input name="p_date1" size="20" value="20191123">
								&nbsp; ~ &nbsp; <input name="OrderSearch" size="20" value="20191223"> -->
								<input id="search_btn" type="submit" value="검색"
								" name="OrderSearch" form="searchid"></td>
						</tr>
					</table>

				</form>

				<!-- <form name=rFrm action="goods_Proc.jsp?flag=delete" enctype="multipart/form-data"> -->
				<form name=rFrm id="rFrame" enctype="multipart/form-data"
					action="changeStatus.do" method="post">
					<table class="mgr_table horHead">
						<tr>
						<tr>
							<td><input class="checkbox" type="checkbox" name="allCh"
								onclick="allChk()"></td>

							<th>주문번호</th>
							<th>상품명</th>
							<th>주문상태</th>
							<th>주문날짜</th>
							<th>결제방법</th>
							<th>결제금액</th>
						</tr>


						<c:forEach var="order" items="${order}">
							<tr>
								<td><input class="checkbox" type="checkbox" name="delete"
									 value="${order.orderNo}"></td>
								<td>${order.orderNo}</td>
								<td>${order.buyProdname}</td>
								<td>${order.status}</td>
								<td>${order.orderDate}</td>
								<td>${order.payMethod}</td>
								<td>${order.totalPrice}</td>
							</tr>
						</c:forEach>


					</table>
					<div class="submit_wrapper">
						<input class="btn" type="button" value="배송완료" id="changeStatus">
						<input class="btn" type="button" value="주문취소" id="delBtn" />
					</div>
				</form>


			</div>


		</div>
		<!--  #btn_manager_wrapper (버튼메뉴 + manager) : admin_side.jsp 에서 열림-->
	</div>
	<!-- #main (상단요약 + 버튼 + manager) : admin_side.jsp 에서 열림-->
</div>

<link rel="stylesheet" type="text/css" href="../css/bottom.css">

<script>
$('#delBtn').click(() => {

    let chkObj = document.getElementsByName("delete"); // name 속성이 RowCheck인것을 모두 가져옴
    for (let i = 0; i < chkObj.length; i++) {
      if (chkObj[i].checked == true) {
        let orderNo = chkObj[i].value;
        $.ajax({
          url: 'orderCancel.do',
          method: 'post', // get , put , post 가능함
          data: { orderNo: orderNo }, // 쿼리스트링
          success: function (result) {
            if (result.retCode == 'Success') {
              console.log(orderNo);
              //chkObj[i].parent().parent().remove();
              $('chkObj[i]').parent().parent().remove('tr');
              window.location.reload();
              

            } else {
              alert("삭제 오류!!");
             
            }
          },
          error: function (reject) {
            console.log(reject);
          }
        })
      }
    }
  })
  $('#changeStatus').click(() => {

    let chkObj = document.getElementsByName("delete"); // name 속성이 RowCheck인것을 모두 가져옴
    for (let i = 0; i < chkObj.length; i++) {
      if (chkObj[i].checked == true) {
        let orderNo = chkObj[i].value;
        $.ajax({
          url: 'changeStatus.do',
          method: 'post', // get , put , post 가능함
          data: { orderNo: orderNo }, // 쿼리스트링
          success: function (result) {
            if (result.retCode == 'Success') {
              console.log(orderNo);
              window.location.reload();
              

            } else {
              alert("변경 오류!!");
             
            }
          },
          error: function (reject) {
            console.log(reject);
          }
        })
      }
    }
  })
  
</script>
</body>
</html>
