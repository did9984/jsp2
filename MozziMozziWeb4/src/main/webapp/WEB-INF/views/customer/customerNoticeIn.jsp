<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="stylesheet" href="bootstrap/css/customerNoticeForm.css">


		<div id="container">
			<div class="writer_title">
				공 지 사 항
			</div>
			<form action="noticeUpdate.do" method="post" id="notice_form" name="notice_form" onsubmit="gogo()">

				<ul class="fafa_ul">
					<li id="ma_bot">
						<label id="wri_txt" for="notice_title">제목</label>
						<input type="text" class="b_der readChk" name="notice_title" id="notice_title"
							value="${vo.title}" readonly>
						<label id="wri_txt" for="notice_writer">작성자 </label>
						<span name="notice_writer" id="notice_writer">관리자</span>
					</li>
					<li class=" li_sun">
						<input type=" text" name="notice_date" id="notice_date" value="${vo.noticeDate}" readonly>
					</li>
					<li id="ma_bot">
						<label for="notice_content">내용</label>
					</li>
					<li>
						<textarea class="b_der readChk" name="notice_content" id="notice_content" cols="80" rows="40"
							readonly>${vo.content}</textarea>
						<p></p>
					</li>
				</ul>
				<input type="hidden" name="no" value="${vo.no}" readonly>
				<div class="notice_btn">
					<input class="not_btn" type="button" value="목록으로">
					<c:if test="${'admin' eq logId }">
						<input class="not_btn" id="upBtn" type="button" value="수정하기">
						<input class="not_btn" class="sub_mit" type="submit" value="저장하기">
					</c:if>
				</div>
			</form>

		</div>
		<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
		<script>
			$('#upBtn').click(() => {
				console.log("${ logId }")
				if ("${ logId }" == "admin") {
					$('.readChk').attr('readonly', false);
				}
			});
			function gogo() {
				let dada = $('.fafa_ul').children('.li_sun').children('input').val();
				console.log(dada);
			}
		</script>