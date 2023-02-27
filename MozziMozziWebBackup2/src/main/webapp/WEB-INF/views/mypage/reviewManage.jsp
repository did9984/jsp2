<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<link rel="stylesheet" type="text/css" href="bootstrap/css/review.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/mypage_style.css">

	<!-- top, bottom 제외 페이지 전체-->
	<div id="main">
		<header>
			<!-- 요약창 부분 -->
		</header>



		<div id="btn_mypage_wrapper">
			<!-- (버튼메뉴 + mypage) -->

			<div id="mypage_side">


				<!-- 메뉴 부분 -->
				<div id="mypage_side">
					<!-- 메뉴 부분 -->
					<div id="mypage_btn_wrapper">
						<div id="section">
							마이페이지
						</div>
						<ul>
							<a id="btn_first" href="#">
								<li>
									<span class="text">주문관리</span>

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
							<a href="#">
								<li>
									<span class="text">My문의</span>

									<!-- default 아이콘 -->
									<span class="icon"><i class="fas fa-chevron-left"></i></span>

									<!-- mypage_point.jsp :: -->
									<!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->

								</li>
							</a>
							<a id="btn_last" href="#">
								<li>
									<span class="text">회원정보</span>

									<!-- default 아이콘 -->
									<span class="icon"><i class="fas fa-chevron-left"></i></span>

									<!-- myinfo_check.jsp / mypage_myinfo.jsp :: -->
									<!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->

								</li>
							</a>
							<a id="btn_last" href="#">
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


				</div> <!-- #btn_wrapper -->


				<!-- </div>   #btn_mypage_wrapper (버튼메뉴 + mypage) : 하위 페이지에서 닫아야함-->

				<!-- </div>  #main (상단요약 + 버튼 + mypage) : 하위페이지에서 닫아야함-->


				<!-------------------- 작업 구역 --------------------->
				<!-------------------- 작업 구역 --------------------->
				<!-------------------- 작업 구역 --------------------->
				<!-------------------- 작업 구역 --------------------->
				<!-------------------- 작업 구역 --------------------->


				<div id="mypage">

					<div id="review_btn_wrapper">

						<h1 class="review_title">리뷰관리</h1>

						<input type="radio" name="list_name" id="avaList">
						<label for="avaList">
							<span class="btn">작성 가능 리뷰</span>
						</label>

						<input type="radio" name="list_name" id="myReList">
						<label for="myReList">
							<span class="btn">나의 리뷰 목록</span>
						</label>
					</div>



					<div class="mypage_wrapper">


						<h3 class="inner_title" id="review_inner_title">작성 가능한 리뷰</h3>


						<table class="horHead review_table" id="avaReview_table">
							<tr class="column_tr">
								<th>주문번호</th>
								<th colspan="2">제품정보</th>
								<th>구매일</th>
								<th>주문상태</th>

							</tr>

							<tr class="pointer_tr">
								<td class="btn_td">
									<a href="/online-shopping-mall/order/mypage_order_view.jsp?order=112">
										112
									</a>
								</td>
								<td>
									<img alt="제품사진" src="/online-shopping-mall/img/product/fus_main1.jpg">
								</td>
								<td class="btn_td">
									<a href="/online-shopping-mall/product/goods_view.jsp?p_code=10">
										아이스 찰떡 3종
									</a>
								</td>
								<td>
									2019-12-30
								</td>
								<td>
									결제완료
								</td>
							</tr>
							<!--  작성 칸 -->
							<tr>
								<td class="rateField" colspan="5">
									<form name="reviewWriteFrm" method="post" action="./reviewProc.jsp">

										<div class="rate_star_wrapper">

											<input type="radio" class="rate_star" id="rate_star1_112_10" name="r_rate" value="1">

											<script>
												const rate_star1_112_10 = document.getElementById('rate_star1_112_10');
											</script>

											<label for="rate_star1_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star2_112_10" name="r_rate" value="2">

											<script>
												const rate_star2_112_10 = document.getElementById('rate_star2_112_10');
											</script>

											<label for="rate_star2_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star3_112_10" name="r_rate" value="3">

											<script>
												const rate_star3_112_10 = document.getElementById('rate_star3_112_10');
											</script>

											<label for="rate_star3_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star4_112_10" name="r_rate" value="4">

											<script>
												const rate_star4_112_10 = document.getElementById('rate_star4_112_10');
											</script>

											<label for="rate_star4_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star5_112_10" name="r_rate" value="5">

											<script>
												const rate_star5_112_10 = document.getElementById('rate_star5_112_10');
											</script>

											<label for="rate_star5_112_10">
												<i class="nStar far fa-star"></i>
											</label>
										</div>

										<input type="hidden" name="o_index" value="112">
										<input type="hidden" name="p_code" value="10">
										<input type="hidden" name="id" value="seongjin">

										<div class="r_content_wrapper">
											<textarea name="r_content" id="reviewText"></textarea>
										</div>
										<script>
											const reviewText_112_10 = document.getElementById('reviewText_112_10');
										</script>
										<input type="submit" class="btn" value="작성">
									</form>
								</td>
								<td>
								</td>
							</tr>



							<tr>
								<td class="btn_td">
									<a href="/online-shopping-mall/order/mypage_order_view.jsp?order=91">
										91
									</a>
								</td>
								<td>
									<img alt="제품사진" src="/online-shopping-mall/img/product/fus_main9.jpg">
								</td>
								<td class="btn_td">
									<a href="/online-shopping-mall/product/goods_view.jsp?p_code=7">
										수고했어 찹쌀떡
									</a>
								</td>
								<td>
									2019-12-27
								</td>
								<td>
									결제완료
								</td>
							</tr>
							<!--  작성 칸 -->
							<tr>
								<td class="rateField" colspan="5">
									<form name="reviewWriteFrm" method="post" action="./reviewProc.jsp">

										<div class="rate_star_wrapper">

											<input type="radio" class="rate_star" id="rate_star1_112_10" name="r_rate" value="1">

											<script>
												const rate_star1_112_10 = document.getElementById('rate_star1_112_10');
											</script>

											<label for="rate_star1_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star2_112_10" name="r_rate" value="2">

											<script>
												const rate_star2_112_10 = document.getElementById('rate_star2_112_10');
											</script>

											<label for="rate_star2_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star3_112_10" name="r_rate" value="3">

											<script>
												const rate_star3_112_10 = document.getElementById('rate_star3_112_10');
											</script>

											<label for="rate_star3_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star4_112_10" name="r_rate" value="4">

											<script>
												const rate_star4_112_10 = document.getElementById('rate_star4_112_10');
											</script>

											<label for="rate_star4_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star5_112_10" name="r_rate" value="5">

											<script>
												const rate_star5_112_10 = document.getElementById('rate_star5_112_10');
											</script>

											<label for="rate_star5_112_10">
												<i class="nStar far fa-star"></i>
											</label>
										</div>

										<input type="hidden" name="o_index" value="112">
										<input type="hidden" name="p_code" value="10">
										<input type="hidden" name="id" value="seongjin">

										<div class="r_content_wrapper">
											<textarea name="r_content" id="reviewText"></textarea>
										</div>
										<script>
											const reviewText_112_10 = document.getElementById('reviewText_112_10');
										</script>
										<input type="submit" class="btn" value="작성">
									</form>
								</td>
								<td>
								</td>
							</tr>



							<tr>
								<td class="btn_td">
									<a href="/online-shopping-mall/order/mypage_order_view.jsp?order=67">
										67
									</a>
								</td>
								<td>
									<img alt="제품사진" src="/online-shopping-mall/img/product/fus_main5.jpg">
								</td>
								<td class="btn_td">
									<a href="/online-shopping-mall/product/goods_view.jsp?p_code=8">
										크림치즈 찰떡 2종
									</a>
								</td>
								<td>
									2019-12-27
								</td>
								<td>
									결제완료
								</td>
							</tr>
							<!--  작성 칸 -->
							<tr>
								<td class="rateField" colspan="5">
									<form name="reviewWriteFrm" method="post" action="./reviewProc.jsp">

										<div class="rate_star_wrapper">

											<input type="radio" class="rate_star" id="rate_star1_112_10" name="r_rate" value="1">

											<script>
												const rate_star1_112_10 = document.getElementById('rate_star1_112_10');
											</script>

											<label for="rate_star1_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star2_112_10" name="r_rate" value="2">

											<script>
												const rate_star2_112_10 = document.getElementById('rate_star2_112_10');
											</script>

											<label for="rate_star2_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star3_112_10" name="r_rate" value="3">

											<script>
												const rate_star3_112_10 = document.getElementById('rate_star3_112_10');
											</script>

											<label for="rate_star3_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star4_112_10" name="r_rate" value="4">

											<script>
												const rate_star4_112_10 = document.getElementById('rate_star4_112_10');
											</script>

											<label for="rate_star4_112_10">
												<i class="nStar far fa-star"></i>
											</label>

											<input type="radio" class="rate_star" id="rate_star5_112_10" name="r_rate" value="5">

											<script>
												const rate_star5_112_10 = document.getElementById('rate_star5_112_10');
											</script>

											<label for="rate_star5_112_10">
												<i class="nStar far fa-star"></i>
											</label>
										</div>

										<input type="hidden" name="o_index" value="112">
										<input type="hidden" name="p_code" value="10">
										<input type="hidden" name="id" value="seongjin">

										<div class="r_content_wrapper">
											<textarea name="r_content" id="reviewText"></textarea>
										</div>
										<script>
											const reviewText_112_10 = document.getElementById('reviewText_112_10');
										</script>
										<input type="submit" class="btn" value="작성">
									</form>
								</td>
								<td>
								</td>
							</tr>

						</table>

					</div>


					<form name="reviewReadFrm" method="post" action="">

						<h3 class="inner_title" id="review_inner_title">내가 작성한 리뷰</h3>


						<!---------  mypage 와 goods_view 에 알맞에 review table 출력 --------->


						<table class="horHead review_table" id="review_read_tb">
							<tr id="column_tr">
								<th>번호</th>


								<!-- if mypage_review.jsp 일 때만 -->
								<th colspan="2">제품정보</th>


								<th>평점</th>
								<th>내용</th>



								<th>구매일</th>
							</tr>


							<tr>
								<td>
									1
								</td>
								<td>
									<img alt="제품사진" src="/online-shopping-mall/img/product/null">
								</td>
								<td>
									<a href="/online-shopping-mall/product/goods_view.jsp?p_code=10">
										아이스 찰떡 3종
									</a>
								</td>
								<td>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

								</td>
								<td>
									또 사먹고 싶은 맛
								</td>
								<td>
									2019-12-30
								</td>
							</tr>


							<tr>
								<td>
									2
								</td>
								<td>
									<img alt="제품사진" src="/online-shopping-mall/img/product/null">
								</td>
								<td>
									<a href="/online-shopping-mall/product/goods_view.jsp?p_code=8">
										크림치즈 찰떡 2종
									</a>
								</td>
								<td>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

								</td>
								<td>
									맛있어요 ~
								</td>
								<td>
									2019-12-30
								</td>
							</tr>


							<tr>
								<td>
									3
								</td>
								<td>
									<img alt="제품사진" src="/online-shopping-mall/img/product/null">
								</td>
								<td>
									<a href="/online-shopping-mall/product/goods_view.jsp?p_code=7">
										수고했어 찹쌀떡
									</a>
								</td>
								<td>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

									<i class="yStar fas fa-star"></i>

								</td>
								<td>
									너무 맛있게 잘 먹었습니다.
								</td>
								<td>
									2019-12-27
								</td>
							</tr>


						</table>


					</form>


				</div>


				<!-- 작업용 : 삭제 예정 -->
				<script type="text/javascript" charset="UTF-8" src="bootstrap/js/review.js"></script>
				<!-- 작업용 : 삭제 예정 -->


			</div> <!--  #btn_mypage_wrapper (버튼메뉴 + mypage) : mypage_side.jsp 에서 열림-->
		</div> <!-- #main (상단요약 + 버튼 + mypage) : mypage_side.jsp 에서 열림-->