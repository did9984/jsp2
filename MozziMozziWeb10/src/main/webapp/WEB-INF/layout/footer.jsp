<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
  <style>
    .a_pix {
      position: fixed;
      bottom: 40px;
      right: 40px;
      width: 40px;
      height: 40px;
      z-index: 1;
    }
  </style>

  <div id="footer_wrapper">
    <a class="a_pix" href="#">
      <img src="img/index/logo/pngegg.png" />
    </a>
    <ul>
      <li id="footer_first">
        <span id="title">고객센터</span>
        <span id="middle">1600-1234</span>
        <button onclick="location.href='customerQna.do'" id="bottom">1:1문의</button>
      </li>
      <li id="footer_second">
        <div class="second" id="phone">
          365고객콜센터
          <span>오전 8시 - 오후 6시</span>
        </div>
        <div class="second" id="qnaboard">
          24시간 QnA 게시판
          <span>고객센터 운영시간에 순차적으로 답변해드리겠습니다.</span>
        </div>
      </li>
      <li id="footer_third">
        <div id="business_info">
          <span>법인명 (상호) : 모찌모찌</span>
          <span>사업자등록번호 : 111-11-11111</span>
          <span>주소 : 모찌광역시 모찌구 모찌로 82, 모찌동 </span>
          <span>팩스 : 070-111-1111 | 이메일 : mozzi@mozzi.com</span>
          <a href="#"><img src="img/index/footer/ico_fb.webp" /></a>
          <a href="#"><img src="img/index/footer/ico_instagram.webp" /></a>
          <a href="#"><img src="img/index/footer/ico_blog.webp" /></a>
          <a href="#"><img src="img/index/footer/ico_youtube.webp" /></a>
        </div>
      </li>
    </ul>
  </div>