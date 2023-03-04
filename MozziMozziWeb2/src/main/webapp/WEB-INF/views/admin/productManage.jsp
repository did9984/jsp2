<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <link rel="stylesheet" type="text/css" href="bootstrap/css/admin_style.css" />
  
  <!-- top, bottom 제외 페이지 전체-->
  <body>
   
    <div id="main" style="padding-top:30px">
      <div id="btn_manager_wrapper" >
        <!-- (버튼메뉴 + manager) -->

        <div id="admin_side">
       
          <div id="section">관리자모드</div>

          <!-- 메뉴 부분 -->
          <div id="manager_btn_wrapper">
            <ul>
              <a href="memberList.do">
                <li>
                  <span class="text">회원관리</span>

                  <!-- default 아이콘 -->
                  <span class="icon"><i class="fas fa-chevron-left"></i></span>

                </li>
              </a>
              <a href="adminProductAdd.do">
                <li>
                  <span class="text">상품등록</span>

                  <!-- default 아이콘 -->
                  <span class="icon"><i class="fas fa-chevron-left"></i></span>

                </li>
              </a>
              <a href="adminProductList.do">
                <li>
                  <span class="text">상품목록</span>

                  <!-- default 아이콘 -->
                  <span class="icon"><i class="fas fa-chevron-left"></i></span>

                </li>
              </a>
              <a href="goodsmaster.do">
                <li>
                  <span class="text">주문관리</span>

                  <!-- default 아이콘 -->
                  <span class="icon"><i class="fas fa-chevron-left"></i></span>

                </li>
              </a>
              <a href="reviewListManage.do">
                <li>
                  <span class="text">리뷰관리</span>

                  <!-- default 아이콘 -->
                  <span class="icon"><i class="fas fa-chevron-left"></i></span>

               </li>
              </a>
            </ul>
          </div>
        </div>
        <!-- #btn_wrapper -->

        <!--</div>   #btn_manager_wrapper (버튼메뉴 + manager) : 하위 페이지에서 닫아야함-->

        <!--</div>  #main (상단요약 + 버튼 + manager) : 하위페이지에서 닫아야함-->

        <!--------------->
        <!--  작업 영역  -->
        <!--------------->

        <div id="manager">
          <h1 class="title">제품 관리</h1>

          <form action="modifyProduct.do" method="post" >
          
          <input type="file" id="fileUpload" accept="image/*" style="display:none" onchange="imageChangeFnc()">
<!-- 웹페이지에서 이미지 파일을 업로드하기 위한 input 태그를 생성하는 코드입니다.

type="file": 이 속성은 파일 업로드를 위한 input 태그임을 지정합니다.
id="fileUpload": 이 속성은 해당 input 태그를 식별하는 ID 값으로, 다른 코드에서 이 태그를 조작할 때 필요합니다.
accept="image/*": 이 속성은 업로드 가능한 파일의 종류를 지정합니다. 여기서는 이미지 파일만 업로드 가능하도록 설정되어 있습니다.
style="display:none": 이 속성은 해당 input 태그가 화면에 보이지 않도록 설정합니다.
onchange="imageChangeFnc()": 이 속성은 파일 업로드 시 발생하는 이벤트를 처리하는 함수를 호출합니다. 여기서는 "imageChangeFnc()" 함수를 호출합니다.
따라서 이 코드를 사용하면 웹페이지에서 이미지 파일을 선택하고 업로드할 수 있습니다. 그러나 이 코드 자체만으로는 이미지 파일을 서버로 전송하거나 다른 작업을 수행하지는 않습니다. 이를 처리하기 위해서는 추가적인 코드가 필요합니다. -->
          
            <h3 class="inner_title">기본정보</h3>

            <table class="mgr_table verHead">
              <tr>
                <th>상품코드</th>
                <td><input  name="code" type="text" value="${vo.prodCode}" readonly /></td>
                <th>상품명</th>
                <td><input class="1 readChange" name="name" type="text" value="${vo.prodName}" /></td>
              </tr>
              <tr>
                <th>상품가격</th>
                <td><input class="2 readChange" name="price" type="text" value="${vo.prodPrice}" /></td>

                <th>카테고리</th>
                <td>
                <% String Category = (String)request.getAttribute("category"); %>
                <% System.out.println(Category); %>
                    <select name='Category' >
                        <option value="fusion" <%="fusion".equals(Category)?"selected":""%>>퓨전</option>
                        <option value="normal" <%="normal".equals(Category)?"selected":""%>>노멀</option>
                        <option value="cake" <%="cake".equals(Category)?"selected":""%>>떡케이크</option>
                        <option value="set" <%="set".equals(Category)?"selected":""%>>선물세트</option>
                    </select>
				</td>
              </tr>
            </table>

            <h3 class="inner_title">사진정보</h3>
            <table class="mgr_table verHead" id="pht_table">
              <tr>
                <th>메인이미지</th>
                <td>
                  <img id="mainImg" width="150px" src="img/product/${vo.mainImage}">
                </td>
              </tr>
              <tr>
                <th>상세이미지</th>
                <td>
                  <img id="detailImg" width="150px" src="img/product/${vo.detailImage}">
                </td>
              </tr>
            </table>

            <div class="submit_wrapper">
              <input class="btn readChange" type="submit" value="상품수정" />
              <input class="btn" value="상품삭제" name="pCode" onclick='location.href="deleteProduct.do?pCode=${vo.prodCode}"'/>
            </div>
          </form>
        </div>
        <!----------------->
        <!--  작업 영역 끝 -->
        <!----------------->
      </div>
      <!--  #btn_manager_wrapper (버튼메뉴 + manager) : admin_side.jsp 에서 열림-->
    </div>
    <!-- #main (상단요약 + 버튼 + manager) : admin_side.jsp 에서 열림-->

    <script>
	// 자바스크립트 =>  event 등록 : addEventListener('type',function(){})
	// 제이쿼리 => elem.on('click', function(){})
	$('#mainImg').on("click",function(){
		
		$('#fileUpload').click(); // 이미지를 클릭하면 <input type="file">이 선택됨
		
	})
	
	$('#detailImg').on("click",function(){
		
		$('#fileUpload').click(); // 이미지를 클릭하면 <input type="file">이 선택됨
		
	})
	
	// 이미지가 변경되면
	function imageChangeFnc(){
		
		//console.log($('#fileUpload')[0].files[0]);
		
		let file = $('#fileUpload')[0].files[0]; // 내가 업로드한 이미지 파일이름
		
		//console.log(file);
		
		// multipart/for-data를 요청 할떄는 FormData()를 이용
		let formData = new FormData(); // FormData() : multipart 처리를 해주는 객체임
		
		// id, file을 업로드해서 기존 DB에 저장되어있는 값을 변경해줄것임
		formData.append("code","${vo.prodCode}");
		formData.append("image", file); 
		
		// 서버에 multipart / form-data : ajax 요청
		$.ajax({
			
			url : 'MainImgUpdate.do',
			method: 'post',
			data: formData, // multipart 데이터를 보냄
			contentType: false, // multipart 요청일 경우의 옵션
			processData: false, // multipart 요청일 경우의 옵션
			success: function (result){
				//console.log(result);
				
				// 화면에서도 변경할 이미지를 나타내줌
				let reader = new FileReader();
				
				reader.onload = function(evnt){
					//console.log(evnt.target)
					$('#mainImg').attr('src', evnt.target.result); // attr : 속성 설정해주는 함수
				}
				reader.readAsDataURL(file);
			},
			error: function(err){
				console.log(err);
			}
			
		});
		
		$.ajax({
			
			url : 'DetailImgUpdate.do',
			method: 'post',
			data: formData, // multipart 데이터를 보냄
			contentType: false, // multipart 요청일 경우의 옵션
			processData: false, // multipart 요청일 경우의 옵션
			success: function (result){
				//console.log(result);
				
				// 화면에서도 변경할 이미지를 나타내줌
				let reader = new FileReader();
				
				reader.onload = function(evnt){
					//console.log(evnt.target)
					$('#detailImg').attr('src', evnt.target.result); // attr : 속성 설정해주는 함수
				}
				reader.readAsDataURL(file);
			},
			error: function(err){
				console.log(err);
			}
			
		});

	}

</script>