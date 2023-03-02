<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="bootstrap/css/admin_style.css" />
<link rel="stylesheet" type="text/css" href="bootstrap/css/review.css">


<link rel="stylesheet" href="bootstrap/css/manager.css">

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
		<!-- #btn_wrapper -->
		<div id="wrap"
			style="display: none; border: 1px solid #DDDDDD; width: 500px; margin-top: 500px; margin-left: 200px, z-index: 200"></div>
		<div style="height: 10px;"></div>
		<div id="modalDiv">
			<div id="modalInnerFrame">
				<div id="modal_elements_wrapper">
					<!-- modal_header : 로그인 / 회원가입 버튼-->

				</div>
			</div>
			<label for="userPopup"></label>
		</div>
		<!--전체 페이지 Wrapper-->
		<div id="manager">
			<!--header Wrapper(로고 상단 Div(추가 Contents 대비용), Hompage Logo)-->
			<form name="reviewReadFrm" method="post" action="">

               
				<h1 class="title">고객들이 작성한 리뷰</h1>
				<br /> <br /> <br />
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
						<td>1</td>
						<td><img alt="제품사진"
							src="/online-shopping-mall/img/product/null"></td>
						<td><a
							href="/online-shopping-mall/product/goods_view.jsp?p_code=10">
								아이스 찰떡 3종 </a></td>
						<td><i class="yStar fas fa-star"></i> <i
							class="yStar fas fa-star"></i> <i class="yStar fas fa-star"></i>
							<i class="yStar fas fa-star"></i> <i class="yStar fas fa-star"></i></td>
						<td>또 사먹고 싶은 맛</td>
						<td>2019-12-30</td>
					</tr>


					<tr>
						<td>2</td>
						<td><img alt="제품사진"
							src="/online-shopping-mall/img/product/null"></td>
						<td><a
							href="/online-shopping-mall/product/goods_view.jsp?p_code=8">
								크림치즈 찰떡 2종 </a></td>
						<td><i class="yStar fas fa-star"></i> <i
							class="yStar fas fa-star"></i> <i class="yStar fas fa-star"></i>
							<i class="yStar fas fa-star"></i> <i class="yStar fas fa-star"></i></td>
						<td>맛있어요 ~</td>
						<td>2019-12-30</td>
					</tr>


					<tr>
						<td>3</td>
						<td><img alt="제품사진"
							src="/online-shopping-mall/img/product/null"></td>
						<td><a
							href="/online-shopping-mall/product/goods_view.jsp?p_code=7">
								수고했어 찹쌀떡 </a></td>
						<td><i class="yStar fas fa-star"></i> <i
							class="yStar fas fa-star"></i> <i class="yStar fas fa-star"></i>
							<i class="yStar fas fa-star"></i> <i class="yStar fas fa-star"></i></td>
						<td>너무 맛있게 잘 먹었습니다.</td>
						<td>2019-12-27</td>
					</tr>


				</table>


			</form>
			<!--메뉴 네비게이션(sticky)-->
			<div id="menuNav">
				<!--nav 구성 :1개의 슬라이드 메뉴, 베스트, 신상품, 고객지원, 검색창(search icon), shopping icon(장바구니)-->
				<div id="nav_Div"></div>
			</div>
		</div>

		<link rel="stylesheet" type="text/css"
			href="bootstrap/css/mypage_style.css">

		<!-- top, bottom 제외 페이지 전체-->
		<div id="main">

			<!--  작성 칸 -->
			<tr>
				<td class="rateField" colspan="5"><input type="radio"
					class="rate_star" id="rate_star1_112_10" name="r_rate" value="1">

					<script>
						const rate_star1_112_10 = document
								.getElementById('rate_star1_112_10');
					</script> <input type="radio" class="rate_star" id="rate_star2_112_10"
					name="r_rate" value="2"> <script>
						const rate_star2_112_10 = document
								.getElementById('rate_star2_112_10');
					</script> <input type="radio" class="rate_star" id="rate_star3_112_10"
					name="r_rate" value="3"> <script>
						const rate_star3_112_10 = document
								.getElementById('rate_star3_112_10');
					</script> <input type="radio" class="rate_star" id="rate_star4_112_10"
					name="r_rate" value="4"> <script>
						const rate_star4_112_10 = document
								.getElementById('rate_star4_112_10');
					</script> <input type="radio" class="rate_star" id="rate_star5_112_10"
					name="r_rate" value="5"> <script>
						const rate_star5_112_10 = document
								.getElementById('rate_star5_112_10');
					</script>
		</div>

		<input type="hidden" name="o_index" value="112"> <input
			type="hidden" name="p_code" value="10"> <input type="hidden"
			name="id" value="seongjin">

		<div class="r_content_wrapper"></div>
		<script>
			const reviewText_112_10 = document
					.getElementById('reviewText_112_10');
		</script>

		</td>
		<td></td>
		</tr>

		</table>


	</div>



	

</div>





</div>
<!--  #btn_mypage_wrapper (버튼메뉴 + mypage) : mypage_side.jsp 에서 열림-->
</div>
<div class="list-page text-center">
		<ul class="pagination pagination-sm en">
			<li class="disabled"><a> <i class="fa fa-angle-double-left">

				</i>
			</a></li>
			<li class="disabled"><a> <i class="fa fa-angle-left"></i>
			</a></li>
			<li class="active"><a>1</a></li>
			<li><a href="/bbs/board.php?bo_table=gametalk&amp;page=2">2</a>
			</li>
			<li><a href="/bbs/board.php?bo_table=gametalk&amp;page=3">3</a>
			</li>
			<li><a href="/bbs/board.php?bo_table=gametalk&amp;page=4">4</a>
			</li>
			<li><a href="/bbs/board.php?bo_table=gametalk&amp;page=5">5</a>
			</li>
			<li><a href="/bbs/board.php?bo_table=gametalk&amp;page=6">6</a>
			</li>
			<li><a href="/bbs/board.php?bo_table=gametalk&amp;page=7">7</a>
			</li>
			<li><a href="/bbs/board.php?bo_table=gametalk&amp;page=8">8</a>
			</li>
			<li><a href="/bbs/board.php?bo_table=gametalk&amp;page=9">9</a>
			</li>
			<li><a href="/bbs/board.php?bo_table=gametalk&amp;page=10">10</a>
			</li>
			<li><a href="/bbs/board.php?bo_table=gametalk&amp;page=11">
					<i class="fa fa-angle-right"> </i>
			</a></li>
			<li><a href="/bbs/board.php?bo_table=gametalk&amp;page=4311">
					<i class="fa fa-angle-double-right"> </i>
			</a></li>
		</ul>
	</div>
<!-- #main (상단요약 + 버튼 + mypage) : mypage_side.jsp 에서 열림-->



<!-- <script type="text/javascript" charset="EUC-KR" src="js/review.js"></script> -->
