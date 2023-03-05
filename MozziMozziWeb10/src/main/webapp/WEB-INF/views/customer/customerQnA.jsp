<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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
          <c:forEach var="qna" items="${qnalist}">
            <tbody>
              <td>${qna.qnaNO}</td>
              <td><a href="customerQnaIn.do?qnano=${qna.qnaNO}">${qna.qnaTitle}</a></td>
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
      <div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="/MozziMozziWeb/customerQna.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/MozziMozziWeb/customerQna.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/MozziMozziWeb/customerQna.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	   </div> 