<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<link rel="icon" href="./img/index/logo/favicon2.png" />
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

			.cards {
				width: 300px;
				height: 340px;
				margin: 0 auto;
				margin-bottom: 40px;
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

		<body>
			<main>
				<div class="goodslist_tit">
					<a href="#" class="goodslist_btn">
						<h3>모찌케이크</h3>
					</a> <span class="goodslist_detail">푹신푹신 모찌 케이크</span>
				</div>
				<div class="container px-4 px-lg-5 mt-5">
					<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
						<!-- Special Item 6개 복사하기 -->

						<c:forEach var="product" items="${list3}">

							<div class="cards">
								<div class="Card">
									<div class="prodImg">
										<img style="width: 99%;height: 100%;" src="img/product/${product.mainImage}" alt="">
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
				</div>
			</main>
		</body>

		<script>
			// <div class="card h-100">
			// 							<!-- Sale badge-->
			// 	<div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale
			// 	</div>
			// 	<!-- Product image                     var지정한이름 ProductVO-->
			// 	<img class="card-img-top" src="img/product/${product.mainImage}" alt="..." />
			// 	<!-- Product details-->
			// 	<div class="card-body p-4">
			// 		<div class="text-center">
			// 			<!-- Product name-->
			// 			<h5 class="fw-bolder">
			// 				<a href="productDetail.do?dduck=${product.prodCode}">${product.prodName}</a>
			// 			</h5>
			// 			<!-- Product reviews-->
			// 			<div class="d-flex justify-content-center small text-warning mb-2">
			// 				<div class="bi-star-fill"></div>
			// 				<div class="bi-star-fill"></div>
			// 				<div class="bi-star-fill"></div>
			// 				<div class="bi-star-fill"></div>
			// 				<div class="bi-star-fill"></div>
			// 			</div>
			// 			<!-- Product price-->
			// 			<span class="text-muted text-decoration-line-through">${product.prodPrice}</span>
			// 		</div>
			// 	</div>
			// </div>
		</script>