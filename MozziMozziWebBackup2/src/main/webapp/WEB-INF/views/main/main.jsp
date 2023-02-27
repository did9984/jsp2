<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
#goodslist_best_ul {
	list-style: none;
}
</style>
<header id="top"></header>

<!--******************-->
<!--작업 및 복붙 구역-->
<!--******************-->
<main>
	<!-- 배너 구역-->
	<div id="bannerWrapper">
		<img src="./img/index/banner/20230206_pc.jpg"
			style="height: 400px; width: 1500px;" alt="banner slider" />
		<div id="banner_btn_wrapper">
			<span> </span>
		</div>
	</div>

	<!-- 베스트상품 구역-->
	<div class="goodslist" id="goodslist_best">
		<div class="goodslist_tit">
			<a href="productList.do" class="goodslist_btn">
				<h3>베스트 모찌</h3>
			</a> <span class="goodslist_detail"> 모찌모찌에서 제일 잘 나가는 모찌</span>
		</div>

	
		<ul id="goodslist_best_ul">
	<c:forEach  var="product" items="${list}" begin="0" end="3">
			<li><a href="./productDetail.do?dduck=${product.prodCode}"> <img
					src="${product.mainImage}" />
			</a>
				<div class="goods_info">
					<a href="./productDetail.do?dduck=${product.prodCode} "> <span class="name">
							"${product.prodName}" </span>
					</a> <span class="price"> ${product.prodPrice}원  </span>
				</div>
			</li>
		
	</c:forEach>
</ul>

	<!-- 신상품 구역 -->
	<div class="goodslist" id="goodslist_new">
		<div class="goodslist_tit">
			<a href="productList.do" class="goodslist_btn">
				<h3>신상 모찌</h3>
			</a> <span class="goodslist_detail">당연히 따끈따끈한 새로 나온 모찌!</span>
		</div>

<ul id="goodslist_best_ul">
		<c:forEach var="product" items="${list}" begin="0" end="3">
			<li><a href="productDetail.do?dduck=${product.prodCode}"> <img
					src="${product.mainImage}" />
			</a>
				<div class="goods_info">
					<a href="productDetail.do?dduck=${product.prodCode} "> <span class="name">
							${product.prodName} </span>
					</a> <span class="price"> ${product.prodPrice}원  </span>
				</div>
			</li>
		</c:forEach>
		</ul>
	</div>
	
	<!-- 세상에 없던 이런 꿀맛 -->
	<div class="goodslist" id="goodslist_new">
		<div class="goodslist_tit">
			<a href="productList.do" class="goodslist_btn">
				<h3>세상에 없던 이런 꿀맛</h3>
			</a> <span class="goodslist_detail">한입 먹으면 혓바닥이 트위스트 추는맛</span>
		</div>


		<ul id="goodslist_best_ul">
		<c:forEach var="product" items="${list}" begin="4" end="7">
			<li><a href="productDetail.do?dduck=${product.prodCode}"> <img
					src="${product.mainImage}" />
			</a>
				<div class="goods_info">
					<a href="productDetail.do?dduck=${product.prodCode} "> <span class="name">
							"${product.prodName}" </span>
					</a> <span class="price"> ${product.prodPrice}원  </span>
				</div>
			</li>
		</c:forEach>
		</ul>
	</div>
	<!-- 설날 손자 손녀 세뱃돈 대신으로 -->

	<div class="goodslist" id="goodslist_new">
		<div class="goodslist_tit">
			<a href="productList.do" class="goodslist_btn">
				<h3>설날 손자 손녀 세뱃돈 대신으로</h3>
			</a> <span class="goodslist_detail">아들선물!,아빠선물,할아버지선물!</span>
		</div>


		<ul id="goodslist_best_ul">
		<c:forEach var="product" items="${list}" begin="8" end="11">
			<li><a href="productDetail.do?dduck=${product.prodCode}"> <img
					src="${product.mainImage}" />
			</a>
				<div class="goods_info">
					<a href="productDetail.do?dduck=${product.prodCode} "> <span class="name">
							${product.prodName} </span>
					</a> <span class="price"> ${product.prodPrice}원  </span>
				</div>
			</li>
		</c:forEach>
		</ul>
	</div>
</main>
<!--******************-->
<!--작업 및 복붙 구역-->
<!--******************-->
<footer id="bottom"></footer>