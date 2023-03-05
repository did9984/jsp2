<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<style>
			main {
				display: -webkit-box;
				display: -ms-flexbox;
				display: flex;
				max-width: 100%;
				min-width: 100%;
				width: 100%;
				margin: 0 auto;
				-webkit-box-orient: vertical;
				-webkit-box-direction: normal;
				-ms-flex-direction: column;
				flex-direction: column;
				-webkit-box-align: center;
				-ms-flex-align: center;
				align-items: center;
			}

			main .goodslist_tit {
				margin-top: 100px;
				margin-bottom: 60px;
				text-align: center;
				width: 100%;
				display: -webkit-box;
				display: -ms-flexbox;
				display: flex;
				-webkit-box-orient: vertical;
				-webkit-box-direction: normal;
				-ms-flex-direction: column;
				flex-direction: column;
				-webkit-box-align: center;
				-ms-flex-align: center;
				align-items: center;
			}

			main .goodslist_tit .goodslist_btn {
				display: block;
				text-decoration: none;
				color: #333;
				font-size: 30px;
			}

			main .goodslist_tit .goodslist_detail {
				display: inline-block;
				color: gray;
				margin-top: 15px;
				padding-bottom: 15px;
				border-bottom: 3px solid #fec084;
			}

			.flex_div {
				display: flex;
			}

			.cards {
				width: 300px;
				height: 380px;
				margin: 0 auto;
				margin-bottom: 40px;
				margin-left: 10px;
				margin-right: 10px;
				flex: 1;
			}

			.Card {
				width: 100%;
				height: 100%;
				margin: 0 auto;
				/* border: 1px solid lightgray; */
				background-color: rgb(255, 255, 255);
				border: 1px solid lightgray;
			}

			.prodImg {
				width: 93%;
				margin: 0 auto;
				padding-top: 10px;
			}

			.prodImg img {
				border: 2px solid white;
			}


			.prodInfo {
				text-align: left;
				padding-left: 20px;
				padding-top: 20px;
			}

			.prodInfo a:nth-child(1) {
				font-size: 25px;
			}

			.prodInfo a:nth-child(2) {
				font-size: 22px;
			}

			.prodInfo ul {
				list-style: none;
			}

			.prodInfo li {
				padding-bottom: 5px;
			}

			.prodInfo li:nth-child(1) {
				font: 22px bold;
			}

			.prodInfo a {
				text-decoration: none;
				color: rgb(119, 119, 119);
			}
		</style>
		<main>
			<img src="./img/index/banner/20230206_pc.jpg" style="width: 85%; margin: 0 auto;" />

			<!-- 베스트상품 구역-->

			<div class="goodslist_tit">
				<a href="productList.do" class="goodslist_btn">
					<h3>베스트 모찌</h3>
				</a> <span class="goodslist_detail"> 모찌모찌에서 제일 잘 나가는 모찌</span>
			</div>

			<div class="flex_div">
				<c:forEach var="product" items="${list}" begin="0" end="3">
					<div class="cards">
						<div class="Card">
							<div class="prodImg">
								<a href="productDetail.do?dduck=${product.prodCode}">
									<img style="width: 99%;height: 100%;" src="img/product/${product.mainImage}" alt="">
								</a> 
							</div>
							<div class="prodInfo">
								<a href="productDetail.do?dduck=${product.prodCode}">
									<b>${product.prodName}</b></a><br>
								<b>${product.prodPrice}원</b>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<div class="goodslist_tit">
				<a href="productList.do" class="goodslist_btn">
					<h3>신상 모찌</h3>
				</a> <span class="goodslist_detail"> 새로나와 따끈따끈한 신상 모찌</span>
			</div>
			<div class="flex_div">
				<c:forEach var="product" items="${list}" begin="4" end="7">
					<div class="cards">
						<div class="Card">
							<div class="prodImg">
								<a href="productDetail.do?dduck=${product.prodCode}">
									<img style="width: 99%;height: 100%;" src="img/product/${product.mainImage}" alt="">
								</a>
							</div>
							<div class="prodInfo">
								<a href="productDetail.do?dduck=${product.prodCode}">
									<b>${product.prodName}</b></a><br>
								<b>${product.prodPrice}원</b>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

			<!-- 설날 손자 손녀 세뱃돈 대신으로 -->

			<div class="goodslist_tit">
				<a href="productList.do" class="goodslist_btn">
					<h3>설날 손자 손녀 세뱃돈 대신으로</h3>
				</a> <span class="goodslist_detail">아들선물!,아빠선물,할아버지선물!</span>
			</div>


			<div class="flex_div">
				<c:forEach var="product" items="${list}" begin="8" end="11">
					<div class="cards">
						<div class="Card">
							<div class="prodImg">
								<a href="productDetail.do?dduck=${product.prodCode}">
									<img style="width: 99%;height: 100%;" src="img/product/${product.mainImage}" alt="">
								</a>
							</div>
							<div class="prodInfo">
								<a href="productDetail.do?dduck=${product.prodCode}">
									<b>${product.prodName}</b></a><br>
								<b>${product.prodPrice}원</b>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</main>