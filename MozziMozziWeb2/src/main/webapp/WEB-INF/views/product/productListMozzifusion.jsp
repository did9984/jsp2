<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="icon" href="./img/index/logo/favicon2.png" />

<body>
	<main>
		<div class="goodslist_tit">
			<a href="#" class="goodslist_btn">
				<h3>퓨전 모찌</h3>
			</a> <span class="goodslist_detail">퓨전의 신비 퓨전 모찌</span>
		</div>
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">
				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
					<!-- Special Item 6개 복사하기 -->
					<c:forEach var="product" items="${list5}">
						<div class="col mb-5">
							<div class="card h-100">
								<!-- Sale badge-->
								<div class="badge bg-dark text-white position-absolute"
									style="top: 0.5rem; right: 0.5rem">Sale</div>
								<!-- Product image                     var지정한이름 ProductVO-->
								<img class="card-img-top" src="${product.mainImage}"
									alt="..." />
								<!-- Product details-->
								<div class="card-body p-4">
									<div class="text-center">
										<!-- Product name-->
										<h5 class="fw-bolder">
											<a href="productDetail.do?dduck=${product.prodCode}">${product.prodName}</a>
										</h5>
										<!-- Product reviews-->
										<div
											class="d-flex justify-content-center small text-warning mb-2">
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
											<div class="bi-star-fill"></div>
										</div>
										<!-- Product price-->
										<span class="price">${product.prodPrice}원</span>
										
									</div>
								</div>
								
								
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
	</main>
</body>