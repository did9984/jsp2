<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="bootstrap/css/goods_view.css">

<body>
	<main>
		<header>
			<div id="img_wrapper">
				<img id="main_pht" src="${vo.mainImage}" style="height: 500px; width: 500px;">
			</div>

			<form id="header_info_wrapper" method="get" action="../order/order.jsp">
				<div class="header name">
					<span id="prodName">${vo.prodName}</span>
				</div>
				<div class="header price">
					<span class="title">가격</span> <span class="content" id="price">${vo.prodPrice}</span><span>
						원</span>
					<!-- <input class="content" id="price" type="text" value="30000" readonly><span> 원</span>  -->
				</div>
				<div class="header volume">
					<span class="title">판매 용량</span> <span class="content">1상자 /360g</span>
				</div>
				<div class="header quantity">
					<span class="title">구매 수량</span> 
						<i id="button_down" class="far fa-minus-square"></i> 
							<input id="quantity" class="quantity" type="number" min="1" max="9" step="1" value="1">
						<i id="button_up" class="far fa-plus-square"></i>
				</div>
				<div class="header total">
					<span class="title">총 상품 금액</span>
					<span id="total"></span><span>원</span>
				</div>
				<div class="header btn_wrapper">
					<input id="cartBtn" type="button" class="btn" value="장바구니에 추가">
					<input id="submit_btn" type="submit" class="btn" value="구매하기">
				</div>
			</form>
		</header>

		<div id="nav_Div">
			<ul class="nav_main">
				<li><a class="nav_a"> <span class="txt">상품상세정보</span>
				</a></li>
				<li><a class="nav_a"> <span class="txt">배송안내</span>
				</a></li>
				<li><a class="nav_a"> <span class="txt">상품후기</span>
				</a></li>
			</ul>
		</div>
		</div>

		<!--  제품 추천 알고리즘 영역 -->
		<div id="recom_wrapper">
			<div class="title">
				<span>이 제품은 어떠세요?</span>
			</div>
		</div>

		<!-- 설명 이미지 영역 -->
		<div id="detail">
			<img id="detail_pht" src="./img/index/product_sample/범벅초코크림떡.webp">
		</div>

		<!-- 상세 이미지 영역    display : none -->
		<div id="detail">
			<img id="detail_pht" src="./img/index/product_sample/범벅초코크림떡.webp">
		</div>


		<!--  리뷰 영역   display : none -->
		<div id="review">
			<table>
				<thead>
					<th></th>
				</thead>
				<tr>
					<td></td>
				</tr>
			</table>
		</div>
		</div>
	</main>

	<script>
	
	const quantity = document.getElementById('quantity');
	const price = document.querySelector('#price');
	const total = document.getElementById('total');
	const firstData = stringNumberToInt(price.innerHTML) * parseInt(quantity.value);
	const down_btn = document.getElementById('button_down');
	const up_btn = document.getElementById('button_up');
	
	function stringNumberToInt(stringNumber){
	    return parseInt(stringNumber.replace(/,/g , ''));
	}

	function numberFormat(inputNumber) {
		   return inputNumber.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	function getresult(){
		 let priceValue = stringNumberToInt(price.innerHTML);
		 let qtyValue = parseInt(quantity.value);
	     if(qtyValue>=10){
	     	alert('9개 까지만 주문이 가능합니다.');
	        quantity.value = 9;
	        qtyValue = 9;
	     }
	        total.innerHTML = numberFormat(priceValue * qtyValue);
	}

	total.innerHTML = numberFormat(firstData);
	console.log('파일');
	function goodsView_init(){
		down_btn.addEventListener('click', function(){
			 let qtyValue = parseInt(quantity.value);
			 if(qtyValue==1){
				  quantity.value = 1;
			 }else{
				 qtyValue -= 1;
				 quantity.value = qtyValue;
			}
			getresult();
		});
		
			up_btn.addEventListener('click', function(){
			let qtyValue = parseInt(quantity.value);
			 qtyValue += 1;
			 if(qtyValue==10)
				 qtyValue=9;
			  quantity.value = qtyValue;
			getresult();
			//console.log('업');
		});
		
	    quantity.addEventListener('change', function(){
	    	getresult();
	    });
	    
	    $("#quantity").keyup(function(event){
	        let inputVal = $(this).val();
	        $(this).val(inputVal.replace(/[^0-9]/gi,''));
	    });
	}
		
	goodsView_init();
		
		let prodCode = "${vo.prodCode}";
		let logId = "${logId}";
		/* let prodquantity = document.getElementById('quantity'); */
		let totalPrice = 0;

		$('#cartBtn').click(() => {
			
			totalPrice = stringNumberToInt(price.innerHTML) * parseInt(quantity.value);
			
			$.ajax({
				url: 'cartAdd.do',
				type: 'POST',
				data: {prodCode :  prodCode, userId : logId , quantity : quantity.value , total : totalPrice},
				success: function(result){
					if(result.retCode == 'Exist'){
						if (confirm("장바구니에 이미 존재하는 상품입니다. 장바구니로 이동하시겠습니까?") == true) {
							 window.location.assign("cart.do?id="+ logId);
						    }else{
						     window.location.reload(); // 새로고침
						    }
					}
					else if(result.retCode == 'Success'){
						 if (confirm("장바구니에 등록 되었습니다. 장바구니로 이동하시겠습니까?") == true) {
							 window.location.assign("cart.do?id=" + logId);
						    }else{
						     window.location.reload(); // 새로고침
						    }
						 
					}else{
						alert("에러발생");
					}
					
				},
				fail : function(reject){
					console.log(reject);
				}
			})
		});
	</script>
	
	