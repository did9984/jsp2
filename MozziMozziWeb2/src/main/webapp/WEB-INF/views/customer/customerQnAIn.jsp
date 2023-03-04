<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <link rel="stylesheet" href="bootstrap/css/prod_qna.css">

  <body>
    <div id="container">
      <div class="top_name">
        상담 문의
      </div>
      <form action="customerQnaAdd.do" method="post" id="qna_form">
        <div class="qna_contents">
          <div class="font right">
            <span class="txt">카테고리</span>
            <select name="muni" id="muni" class="pl ri2" value="${category}">
              <option value="payment" class="txt">결제</option>
              <option value="delivery" class="txt">배송</option>
              <option value="order" class="txt">기타</option>
            </select>
          </div>
          <div class="font">
            <span class="txt">제목</span>
            <input type="text" id="qna_title" name="qna_title" value="${vo.qnaTitle}">
            <span id="dd" class="txt">작성자</span>
            <input type="text" id="qna_user_id" name="qna_user_id" value="${vo.userId}" readonly><span id="dd"
              class="txt">${vo.userId}</span>

          </div>
          <div class="font">
            <span id="left" class="txt">내용</span>
            <textarea name="qna_content" id="qna_content" cols="70" rows="20">${vo.qnaContent}</textarea>
          </div>
        </div>
        <div class="btn_s">
          <input class="add" type="button" value="목록으로">
          <input class="re" type="reset" value="저장하기">
        </div>
      </form>
    </div>