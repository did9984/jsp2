<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type ="text/javascript" src="./js/goods_master.js"></script>





<!--<!DOCTYPE html>
<html>
	<head>-->
		<meta charset="UTF-8">
	   
		<link rel="stylesheet" type="text/css" href= "/../css/reset.css">
		<link rel="stylesheet" type="text/css" href= "bootstrap/css/admin_style.css">
		<link rel="stylesheet" href="/../css/top.css">
		<script src="https://kit.fontawesome.com/115bcf1f34.js" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
		<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <!--</head>
	<body> -->
	      <link rel="stylesheet" href="css/admin_style.css">  
			    <div id="wrap" style="display:none;border:1px solid #DDDDDD;width:500px;margin-top:500px; margin-left: 200px, z-index: 200"></div>
    	<div style="height:10px;"></div>
	  
	    	    <!--전체 페이지 Wrapper-->
	

	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="/online-shopping-mall/js/top.js"></script>



	<style>
.mgr_table td input, .mgr_table td select {
    padding: 10px;
    border: 1px solid #dcdbde;
    border-radius: 3px;
    margin-left: 5px;
    margin-right: 5px;
    width: 130px;
}

td{
	text-la
}
</style>



<link rel="stylesheet" type="text/css" href="css/admin_style.css">
<script src="https://kit.fontawesome.com/115bcf1f34.js" crossorigin="anonymous"></script>
  

  	<!-- top, bottom 제외 페이지 전체-->
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


    
    <div id="btn_manager_wrapper">  
    <!-- (버튼메뉴 + manager) -->


    


    <!--</div>   #btn_manager_wrapper (버튼메뉴 + manager) : 하위 페이지에서 닫아야함-->
    
   <!--</div>  #main (상단요약 + 버튼 + manager) : 하위페이지에서 닫아야함-->




	<div id="manager">
	
		<h1 class="title">전체주문관리</h1>

		<form name = "listFrm">
			<input type ="hidden"  name ="reload" value="true">
		</form>


		<form name ="SearchFrm" method="get" >
		
			<input type = "hidden" name ="fch" value="0">	
			
			<h3 class="inner_title">전체 ? 건 </h3>
			
			<table class="mgr_table verHead">
				<tr>
					<th>제품명</th>
					<td>
						<select id="p_select" name ="pnameList" onchange = "listSelect()">
						<option value ="">제품명 선택</option>
						
						<option value ="흰콩 쑥개떡">흰콩 쑥개떡</option>
						
						<option value ="오색찹쌀떡">오색찹쌀떡</option>
						
						<option value ="망개떡">망개떡</option>
						
						<option value ="수고했어 찹쌀떡">수고했어 찹쌀떡</option>
						
						<option value ="크림치즈 찰떡 2종">크림치즈 찰떡 2종</option>
						
						<option value ="오색보리앙금절편 2종">오색보리앙금절편 2종</option>
						
						<option value ="아이스 찰떡 3종">아이스 찰떡 3종</option>
						
						<option value ="방울떡">방울떡</option>
						
						<option value ="[제주특산품] 오메기떡">[제주특산품] 오메기떡</option>
						
						<option value ="찰편 2종">찰편 2종</option>
								
						</select>		
						<input name ="p_name" value="">
					</td>		
				</tr>
				<tr>
                    <th>
                        검색기간
                        (주문날짜)
                    </th>
					<td>
                        <input name ="p_date1" size="20"  value="20191123"> &nbsp; ~ &nbsp;
						<input name ="p_date2" size="20" value="20191223">			
                        <input id="search_btn" type="button"  value="검색" onclick="check()">
					</td>
				</tr>	
			</table>
				
		</form>

	<!-- <form name=rFrm action="goods_Proc.jsp?flag=delete" enctype="multipart/form-data"> -->
	<form name=rFrm id="rFrame" action="goods_masterProc.jsp" enctype="multipart/form-data">
		<table class="mgr_table horHead">
			<tr>
				
				<tr>
					<td>
						<input class="checkbox" type ="checkbox" name="allCh" onclick="allChk()" >
					</td>					
					<th>제품코드</th>
					<th>상품명</th>
					<th>상품가격</th>
					<th>주문날짜</th>
					<th>결제방법</th>
					<th>결제금액</th>
				</tr>			
								
					<tr>
					<td>
						<input class="checkbox" type ="checkbox" name="fch" value="4" onclick="chk()" >
					</td>						
					<td><a href="goods_view.jsp?p_code=4">4</a></td>
					<td>흰콩 쑥개떡</td>
					<td>13500</td>
					<td>2019-12-20</td>
					<td>1</td>
					<td>1</td>		
				</tr>
						
					<tr>
					<td>
						<input class="checkbox" type ="checkbox" name="fch" value="6" onclick="chk()" >
					</td>						
					<td><a href="goods_view.jsp?p_code=6">6</a></td>
					<td>망개떡</td>
					<td>10000</td>
					<td>2019-12-20</td>
					<td>1</td>
					<td>0</td>		
				</tr>
						
					<tr>
					<td>
						<input class="checkbox" type ="checkbox" name="fch" value="10" onclick="chk()" >
					</td>						
					<td><a href="goods_view.jsp?p_code=10">10</a></td>
					<td><a href="goods_view.jsp?p_code=10">아이스 찰떡 3종</a></td>
					<td>4200</td>
					<td>2019-12-20</td>
					<td>1</td>
					<td>10</td>		
				</tr>
						
					<tr>
					<td>
						<input class="checkbox" type ="checkbox" name="fch" value="11" onclick="chk()" >
					</td>						
					<td><a href="goods_view.jsp?p_code=11">11</a></td>
					<td>방울떡</td>
					<td>3900</td>
					<td>2019-12-20</td>
					<td>1</td>
					<td>10</td>		
				</tr>
						
					<tr>
					<td>
						<input class="checkbox" type ="checkbox" name="fch" value="13" onclick="chk()" >
					</td>						
					<td><a href="goods_view.jsp?p_code=13">13</a></td>
					<td>[제주특산품] 오메기떡</td>
					<td>5000000</td>
					<td>2019-12-20</td>
					<td>0</td>
					<td>1</td>		
				</tr>
			
			
			
        </table>
        <div class="submit_wrapper">
            <input class="btn" type ="button" name="update" id="update_btn" value="배송완료">
            <input class="btn" type="button" name="delete" id="delete_btn" value="주문취소" disabled>
         
            
        </div>
	</form>

	</div>


</div> <!--  #btn_manager_wrapper (버튼메뉴 + manager) : admin_side.jsp 에서 열림-->
</div> <!-- #main (상단요약 + 버튼 + manager) : admin_side.jsp 에서 열림-->
	</div>

<link rel="stylesheet" type="text/css" href="../css/bottom.css">

<script>
function allChk() {
	f= document.rFrm;
	if(f.allCh.checked){
		for(i=0;i<f.fch.length;i++){
				/*항목의 체크버튼(fch)들이 배열이기에*/
			f.fch[i].checked = true;
		}
		f.delete.disabled = false;//버튼의 활성화
		f.update.disabled = false;//버튼의 활성화
	}else{
		for(i=0;i<f.fch.length;i++){
			f.fch[i].checked = false;
		}
		f.delete.disabled = true;//버튼의 비활성화	
		f.update.disabled = true;//버튼의 활성화
	}
}
 function chk(){
		f=document.rFrm;
		for(i=0; i<f.fch.length;i++){
			//alert(f.fch[i].value);
			if(f.fch[i].checked){ //fch 체크박스가 체크가 된 경우
				f.delete.disabled = false;
				f.update.disabled = false;//버튼의 활성화
			return; //밑에 있는 체크박스의 체크 유무는 무의미
			}
		}
		f.allCh.checked= false; //전체체크박스 해제
		f.delete.disabled = true; //버튼 비활성화
		f.update.disabled = true;//버튼의 활성화
	} 
 
	window.onload = function(){
		function typeCheck(){
			const update_btn = document.querySelector('#update_btn');
			const delete_btn = document.querySelector('#delete_btn');
			
			function deletecompelete(){
				$('#buffer').val('delete');
				$('#rFrame').submit();
			}
			update_btn.addEventListener('click', function(){
				const inputdata = 
				$('#buffer').val('update');
				$('#rFrame').submit();
			});
			delete_btn.addEventListener('click',function(){
				if(confirm("삭제하시겠습니까?")==true){
					console.log("삭제했어요");
					deletecompelete();
				}else{
					return;
				}
			});
		}
		typeCheck();
	}
</script>
</body>	
</html>
    