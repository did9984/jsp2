<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <link rel="stylesheet" href="bootstrap/css/notice.css">

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
      <div class="bar"></div>
    </nav>
    <div class="notice">공지사항</div>
    <div class="btns">
      <input type="button" value="공지등록" class="btn">
    </div>
    <div id="notice_table_div">
      <table id="notice_table">
        <thead>
          <th class="notice_no">번호</th>
          <th class="notice_title">공지사항</th>
          <th class="notice_writer">작성자</th>
          <th class="notice_date">작성일자</th>
          <th class="hit_count">조회수</th>
        </thead>
        <tbody>
          <td>1</td>
          <td>다들 똑바로 하세요 !!!</td>
          <td>suna조장</td>
          <td>2023.02.23</td>
          <td>666</td>
        </tbody>
        <tfoot>
          <th>번호</th>
          <th>공지사항</th>
          <th>작성자</th>
          <th>작성일자</th>
          <th>조회수</th>
        </tfoot>
      </table>
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