<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.nav_ul {
	list-style: none;
	position: relative;
	right: 10px;
}
</style>
<div id="wrap"
	style="display: none; border: 1px solid #DDDDDD; width: 500px; margin-top: 500px; margin-left: 200px"></div>
<div style="height: 10px;"></div>


<!--전체 페이지 Wrapper-->
<div id="top_wrapper">
	<div class="i_cate">
		<ul id="active_btn_wrapper">
			<c:if test="${!empty logId && logId ne 'admin'}">
				<li><a href="myInfoCheck.do"><i class="fa fa-address-card"
						aria-hidden="true"></i></a></li>
				<li><a href="cart.do?id=${logId}"><i
						class="fas fa-shopping-cart"></i></a></li>
				<li><a href="logout.do"><i class="fa fa-sign-out fa-lg"
						aria-hidden="true"></i></a></li>
			</c:if>
			<c:if test="${!empty logId && logId eq 'admin'}">
				<li><a href="memberList.do"><i class="fa fa-cogs fa-lg"
						aria-hidden="true"></i></a></li>
				<li><a href="logout.do"><i class="fa fa-sign-out fa-lg"
						aria-hidden="true"></i></a></li>

			</c:if>
			<c:if test="${empty logId }">
				<li><a href="login.do"><i class="fas fa-user"></i></a></li>
				<li><a href="signUpForm.do"><i class="fas fa-sign-in-alt"></i></a>
				</li>
			</c:if>
		</ul>
	</div>
	<!--로고 이미지 Div-->
	<div id="homeLogo" style="position: relative; top: 30px;">
		<a id="logo_a" href="main.do"> <img id="logoImg"
			src="./img/index/banner/mozzi3.png" alt="이미지 로딩 불가!"> <!--LOGO-->
		</a>
	</div>
	<!--메뉴 네비게이션(sticky)-->
	<div id="menuNav">
		<!--nav 구성 :1개의 슬라이드 메뉴, 베스트, 신상품, 고객지원, 검색창(search icon), shopping icon(장바구니)-->
		<div id="nav_Div">
			<ul class="nav_main">
				<li id="nav_start"><a class="nav_a" id="ricecakeNav"> <i
						class="fas fa-bars"></i> <span class="txt">모찌</span>
				</a>
					<div id="nav_category">
						<ul class="nav_ul">
							<li><a href="#" class="category_menu">전체모찌보기</a></li>
							<li><a href="#" class="category_menu">모찌선물세트</a></li>
							<li><a href="#" class="category_menu">퓨전모찌</a></li>
							<li><a href="#" class="category_menu">노멀모찌</a></li>
							<li><a href="#" class="category_menu">모찌케이크</a></li>
						</ul>
					</div></li>
				<li><a class="nav_a" href="productList.do"> <span
						class="txt">모찌베스트</span>
				</a></li>
				<li><a class="nav_a"> <span class="txt">모찌선물세트</span>
				</a></li>
				<li><a class="nav_a"> <span class="txt">모찌케이크</span>
				</a></li>
				<li><a class="nav_a" href="customerNotice.do"> <span
						class="txt">고객센터</span>
				</a></li>
				<li>
					<form method="post" action="search.jsp" id="search_form">
						<label> <input name="search" type="text" id="search_input"
							placeholder="Enter a product" autocomplete=”off”> <i
							class="fas fa-search"
							onclick="document.getElementById('search_form').submit()"></i>
						</label> <input name="list" value="search" type="hidden">
					</form>
				</li>
			</ul>
		</div>
	</div>
</div>



<!--****************************-->
<!--****************************-->
<!-- top.jsp 로 복사할때 끝점 -->
<!--****************************-->
<!--****************************-->