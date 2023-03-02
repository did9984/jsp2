<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


  <link rel="stylesheet" href="bootstrap/css/qna.css">
  <link rel="stylesheet" href="bootstrap/css/top.css">

  <body>
    <nav>
      <div id="menuNav">
        <div id="nav_Div_top">
          <ul class="nav_top">
            <li>
              <span class="txt_top">고객센터</span>
            </li>
            <br>
            <span class="txt">이용시간 : 08:00 ~ 18:00</span>
          </ul>
        </div>
        <!--nav 구성 :1개의 슬라이드 메뉴, 베스트, 신상품, 고객지원, 검색창(search icon), shopping icon(장바구니)-->
        <div id="nav_Div">
          <ul class="nav_main">
            <li>
              <a class="nav_a" href="customerNotice.do">
                <span class="txt">공지사항</span>
              </a>
            </li>
            <li>
              <a class="nav_a" href="customerFna.do">
                <span class="txt">자주하는 질문</span>
              </a>
            </li>
            <li>
              <a class="nav_a" href="customerQna.do">
                <span class="txt">상품문의</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="bar"></div>
    <div class="prod">상품문의</div>
    <div id="qna_table_div">
      <table id="qna_table">
        <thead>
          <th class="qna_no">번호</th>
          <th class="qna_info">상품정보</th>
          <th class="qna_title">제목</th>
          <th class="qna_writer">작성자</th>
          <th class="qna_date">작성일자</th>
          <th class="hit_count">조회수</th>
        </thead>
        <c:forEach var="qna" items= "${qnalist}" >
        <tbody>
          <td>${qna.qnaNO}fff</td>
          <td>${qna.qnaTitle}  </td>
          <td>${qna.qnaContent} </td>
          <td>${qna.userId} </td>
          <td>${qna.writeDate} </td>
          <td>${qna.hitCount} </td>
        </tbody>
        </c:forEach>
        
      </table>
    </div>
    <div class="addbtn">
      <button type="button" onclick="location.href='customerQnaForm.do'">문의 등록</button>
    </div>
    <div class="pagings">
      <a href="#"><img src="./img/paging/왼쪽화살표.jpg" alt=""></a>
      <a href="#"><img src="./img/paging/1.jpg" alt=""></a>
      <a href="#"><img src="./img/paging/2.jpg" alt=""></a>
      <a href="#"><img src="./img/paging/3.jpg" alt=""></a>
      <a href="#"><img src="./img/paging/4.jpg" alt=""></a>
      <a href="#"><img src="./img/paging/5.jpg" alt=""></a>
      <a href="#"><img src="./img/paging/6.jpg" alt=""></a>
      <a href="#"><img src="./img/paging/7.jpg" alt=""></a>
      <a href="#"><img src="./img/paging/8.jpg" alt=""></a>
      <a href="#"><img src="./img/paging/9.jpg" alt=""></a>
      <a href="#"><img src="./img/paging/10.jpg" alt=""></a>
      <a href="#"><img src="./img/paging/오른쪽화살표.jpg" alt=""></a>
    </div>