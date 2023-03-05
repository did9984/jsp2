<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  <link rel="stylesheet" type="text/css" href="bootstrap/css/admin_style.css" />

  <body>
    <!-- top, bottom 제외 페이지 전체-->
    <div id="main" style="padding-top:30px" >
      <div id="btn_manager_wrapper">
        <!-- (버튼메뉴 + manager) -->

        <div id="admin_side">
          <div id="section">관리자모드</div>

          <!-- 메뉴 부분 -->
          <div id="manager_btn_wrapper">
            <ul>
              <a href="memberList.do">
                <li>
                  <span class="text">회원관리</span>

                  <!-- default 아이콘 -->
                  <span class="icon"><i class="fas fa-chevron-left"></i></span>

                  <!-- member_list.jsp / member_view.jsp :: -->
                  <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                </li>
              </a>
              <a href="adminProductAdd.do">
                <li>
                  <span class="text">상품등록</span>

                  <!-- default 아이콘 -->
                  <span class="icon"><i class="fas fa-chevron-left"></i></span>

                  <!-- order_list.jsp / order_view.jsp :: -->
                  <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                </li>
              </a>
              <a href="adminProductList.do">
                <li>
                  <span class="text">상품목록</span>

                  <!-- default 아이콘 -->
                  <span class="icon"><i class="fas fa-chevron-left"></i></span>

                  <!-- goods_master.jsp, goods_insert.jsp, goods_view.jsp, goods_stock.jsp :: -->
                  <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                </li>
              </a>
              <a href="goodsmaster.do">
                <li>
                  <span class="text">주문관리</span>

                  <!-- default 아이콘 -->
                  <span class="icon"><i class="fas fa-chevron-left"></i></span>

                  <!-- 접속관리 페이지 누락됨 :: -->
                  <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                </li>
              </a>
              <a href="reviewListManage.do">
                <li>
                  <span class="text">리뷰관리</span>

                  <!-- default 아이콘 -->
                  <span class="icon"><i class="fas fa-chevron-left"></i></span>

                  <!-- qna_list.jsp / qna_view.jsp :: -->
                  <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                </li>
              </a>
            </ul>
          </div>
        </div>
        <!-- #btn_wrapper -->

        <!--</div>   #btn_manager_wrapper (버튼메뉴 + manager) : 하위 페이지에서 닫아야함-->

        <!--</div>  #main (상단요약 + 버튼 + manager) : 하위페이지에서 닫아야함-->

        <!--------------->
        <!--  작업 영역  -->
        <!--------------->

        <div id="manager">
          <h1 class="title">상품목록</h1>
          <br />
          <br />
          <br />

          <!-- <form name=rFrm action="goods_Proc.jsp?flag=delete" enctype="multipart/form-data"> -->
          <form
            name="rFrm"
            id="rFrame"
            action="goods_masterProc.jsp"
            enctype="multipart/form-data"
          >
            <table class="mgr_table horHead">
              <thead>
	              <tr>
	                <th>상품코드</th>
	                <th>상품명</th>
	                <th>상품가격</th>
	                <th>카테고리</th>
	                <th>등록일자</th>
	                <th>판매량</th>
	              </tr>
		      </thead>
		      <tbody>
		      	<c:forEach var="adminProd" items="${list}">	              
		              <tr>      
		                <td><a href="productManage.do?dduck=${adminProd.prodCode}">${adminProd.prodCode}</a></td>
		                <td>${adminProd.prodName}</td>
		                <td>${adminProd.prodPrice}</td>
		                <td>${adminProd.prodCategory}</td>
		                <td>${fn:substring(adminProd.update,0,10) }</td>
		                <td>${adminProd.sales}</td>
		              </tr>
	              
                </c:forEach>
               </tbody>
            </table>

            <div class="submit_wrapper">
        
              <input
                class="btn"
                type="button"
                value="추가"
                onclick="location.href='adminProductAdd.do'"
              />
              <input type="hidden" name="buffer" id="buffer" />
            </div>
          </form>
        </div>
      </div>
      <!--  #btn_manager_wrapper (버튼메뉴 + manager) : admin_side.jsp 에서 열림-->
    </div>
    <!-- #main (상단요약 + 버튼 + manager) : admin_side.jsp 에서 열림-->
 
    