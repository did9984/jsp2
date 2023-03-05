<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<link rel="stylesheet" href="bootstrap/css/customerNoticeForm.css">


	<div id="container">
		<div class="writer_title">
			공 지 사 항 등 록
		</div>
		<form action="noticeAdd.do" method="post" id="notice_form">
			<ul>
				<li id="ma_bot">
					<label id="wri_txt" for="notice_title">제목 </label>
					<input type="text" class="b_der" name="notice_title" id="notice_title">
					<label id="wri_txt" for="notice_writer">작성자 </label>
					<span name="notice_writer" id="notice_writer">관리자</span>
				</li>
				<li id="ma_bot">
					<label for="notice_content">공지사항을 입력해주세요</label>
				</li>
				<li>
					<textarea class="b_der" name="notice_content" id="notice_content" cols="80" rows="40"></textarea>
					<p>늘려서 입력창을 늘리실 수 있습니다.</p>
				</li>
			</ul>
			<div class="notice_btn">
				<input class="not_btn" type="submit" value="공지등록">
				<input class="not_btn" type="reset" value="등록취소">
			</div>
		</form>

	</div>