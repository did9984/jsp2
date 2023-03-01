
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://opengraphprotocol.org/schema/" xml:lang="ko" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="google-site-verification" content="e206eBT514jw3mUVrg-30y1U6NmaKVdcYOcESKidIFo"/>
<meta name="naver-site-verification" content="061c9b902737da439ec81fc53ca7a1bceddaee2a"/>
<meta name="facebook-domain-verification" content="k1tqjv1qvb202yyw2xk4lfcvtxzyf2"/>

	<title></title>
		
	<!-- link rel="shortcut icon" href="http://static2.e-himart.co.kr/contents/system/storeimage/20150811095233_favicon.ico" />  -->
	 
	<link type="text/css" rel="stylesheet" href="http://static1.e-himart.co.kr/resources/layout/css/common.css?ver=202302240002" />
	
	<link type="text/css" rel="stylesheet" href="http://static2.e-himart.co.kr/resources/layout/css/jquery-ui.min.css" />

</head>










	<div id="topBanner">
		
		<div id="topBannerInfoSpan">
</div>


<div id="container" style = "margin-top: 30px">
		<!-- content -->
		<link type="text/css" rel="stylesheet" href="http://static1.e-himart.co.kr/resources/layout/css/display.css?202302240002" /> 
<link type="text/css" rel="stylesheet" href="http://static2.e-himart.co.kr/resources/layout/css/slick.css?ver=202302240002" />

<!-- 개인화추천 서비스 전환(딥프로->아이겐)  : 2020.07.23 반영 -->



<!--1. 최소금액 : , 2. 카드행사 텍스트:     -->

 


<div id="content" class="reaction">
	<!-- 공통 : location bar-->
		  
			<!-- //공통 : location bar-->
		
			<!-- 5줄정리 --> 
			<div class="lnbGroup">		
				<div id="divTag">
			</div>

	<!-- 스마트필터 END -->
			</div>
			<!-- //lnb group -->
			
				
				
				
		
					
				<div class="tipLayerArea layer-prdComparison " id="productCompareList"></div>
			
				<div class="previewP popLayer layer-prePop popArea zoomArea" id="divGoodsPreview"></div>
				
				<!-- 상품 -->
				
		
			
				
				<div class="prdItemList atypicalPrdList">
					<ul class="thumnailType thumnailS"  id="searchGoodsList">
						<c:forEach var="product" items="${ipp}">
						
			
		
						<!-- loop -->
						<li><a href="productDetail.do?dduck=${product.prodCode}">
		<div class="prdItem " goodsNo="0020017709" id="cat0020017709">
			
			
						
			<a href="productDetail.do?dduck=${product.prodCode}" onclick=""  class="prdLink">
				<div class="prdImg">
				<img src="${product.mainImage}"  />
								</div>
			
			<div class="prdInfo">
				
				<!-- 으뜸태그 이미지 -->
				<p class="prdName">
				<span class="brndName">${product.prodName}</span></p>
				
				<div class="prdPrice priceTxt">
				<!-- 판매가,이전판매가 -->
<div class="priceInfo">
	<span class="discountPrice"><strong> ${product.prodPrice}</strong><span class="priceUnit">원</span></span>
		
			</div>

				</div>
			</div>
			
		<div class="prdUtil">
					<div class="prdFlag">

</div>
</div>
		</a>
	</div>
	</li>
	</c:forEach>
	</ul>
	</div>
	</div>
</body>



</html>
	