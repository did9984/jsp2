<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<link rel="stylesheet" type="text/css"
	href="bootstrap/css/goods_view.css">
 <!-- Google Font: Source Sans Pro -->
 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
 <!-- Font Awesome -->
 <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
 <!-- Theme style -->
 <link rel="stylesheet" href="../../dist/css/adminlte.min.css">	

<body>
	<main>
		<header>
			<div id="img_wrapper">
				<img id="main_pht" src="img/product/${vo.mainImage}" style="height: 500px; width: 500px;">
			</div>

			<form>
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
					<input id="submit_btn" type="button" class="btn" value="구매하기">
				</div>
			</form>
		</header>

		<form id="orderForm" action="oneOrder.do" method="post">
				<input type="hidden" name="prodCode" value="${vo.prodCode}">
				<input type="hidden" name="mainImage" value="${vo.mainImage}">
				<input type="hidden" name="prodName" value="${vo.prodName}">
				<input type="hidden" id="cartQuantity" name="cartQuantity" value="">
				<input type="hidden" id="cartPrice" name="cartPrice" value="">
				<input type="hidden" name="userId" value="${logId}">
		</form>
		
		<!-- 설명 이미지 영역 -->
		<div id="detail">
	     <table class="table" >
    	  <thead>
   			<tr>
    			<th style="text-align:center" width="336px"><button type="button" class="btn btn btn-lg">상품상세정보</button></th>
    			<th style="text-align:center" width="336px"><button type="button" class="btn btn btn-lg">배송안내</button></th>
    			<th style="text-align:center" width="336px"><button type="button" class="btn btn btn-lg">상품후기</button></th>
    		</tr>
    	  </thead>
    	  <tbody>
    	  	<tr>
    	  		<td colspan="3" style="text-align : center"><img id="delivery_pht" src="img/product/${vo.detailImage}"></td>
    	  	</tr>
    	  </tbody>
    	 </table>
				
		</div>
		
		<!-- 배송안내  -->
			<div id="detail">
	     <table class="table"  >
    	  <thead>
   			<tr>
    			<th style="text-align:center" width="336px"><button type="button" class="btn btn btn-lg">상품상세정보</button></th>
    			<th style="text-align:center" width="336px"><button type="button" class="btn btn btn-lg">배송안내</button></th>
    			<th style="text-align:center" width="336px"><button type="button" class="btn btn btn-lg">상품후기</button></th>
    		</tr>
    	  </thead>
    	 </table>
			<img id="delivery_pht" src="./img/product/배송.jpg">
		</div>

		<!--  리뷰 영역   display : none -->		
		<div id="review">
	     <table class="table" >
    	  <thead>
   			<tr>
    			<th style="text-align:center" width="336px"><button type="button" class="btn btn btn-lg">상품상세정보</button></th>
    			<th style="text-align:center" width="336px"><button type="button" class="btn btn btn-lg">배송안내</button></th>
    			<th style="text-align:center" width="336px"><button type="button" class="btn btn btn-lg">상품후기</button></th>
    		</tr>
    	  </thead>
    	 </table>
	    </div>

        <!-- /.row -->
   	   <section class="content" >	
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title" style="text-align:center">상품후기</h3>
              </div>
              <!-- ./card-header -->
              <div class="card-body">
                <table class="table table-bordered table-hover" >
                  <thead>
                    <tr style="text-align:center">
                      <th>주문번호</th>
                      <th>작성자</th>
		    		  <th>이미지</th>
		    		  <th>별점</th>
	    		  	  <th>　　　　　　　　　　　　　제목　　　　　　　　　　　　　</th>
                    </tr>
                  </thead>

                  <tbody>                  
                  <c:forEach var="review" items="${reviewList}">
                    <tr data-widget="expandable-table" aria-expanded="false" style="text-align:center">
                      <td>${review.orderNo}</td>
                      <td>${review.userId}</td>
                      <td>${review.reImage}</td>
                      <td>${review.starRating}</td>
                      <td>${fn:substring(review.reContent,0,20)}</td>
                    </tr>                 
                 
                    <tr class="expandable-body">
                      <td colspan="5">
                        <p>
                         ${review.reContent}
                        </p>
                      </td>
                    </tr>
                   </c:forEach> 
                  </tbody>

                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
        </div>
        <div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="/MozziMozziWeb/productDetail.do?dduck=${vo.prodCode}&nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/MozziMozziWeb/productDetail.do?dduck=${vo.prodCode}&nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/MozziMozziWeb/productDetail.do?dduck=${vo.prodCode}&nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
	   </section>	
	</main>
<!-- jQuery -->
<script src="bootstrap/js/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="bootstrap/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="bootstrap/js/demo.js"></script>

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
	//console.log('파일');
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
			
			if(logId == ""){
				
				alert("로그인 후 장바구니에 추가하실 수 있습니다.");
				
			}else{
			
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
							alert("로그인을 해주세요");
							window.location.assign("login.do");
						}
						
					},
					fail : function(reject){
						console.log(reject);
					}
				})
			}
		});
		
		//console.log(logId == "");

		$('#submit_btn').click(function(){
			
			if(logId == ""){
				alert("로그인 후 구매하실 수 있습니다.");
			}else{
				cartQuantity.value = quantity.value;
				totalPrice = stringNumberToInt(price.innerHTML) * parseInt(quantity.value);
				cartPrice.value = totalPrice;
				orderForm.submit();
			}
			
		}); 
		
		
	</script>
	
	