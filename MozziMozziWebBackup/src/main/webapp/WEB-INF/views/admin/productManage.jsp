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

          <form method="post" action="#" >
            <!-- enctype="multipart/form-data" 일때에는 post방식으로 보낸다. 
            대신에 action을 통해서 action="productProc.jsp?flag=insert" 를 해줘야한다.-->

            <!--  input hidden 으로 flag 값 넘기면 flag=update 전달 가능 
        		<input type="hidden" value="update" name="flag">	-->

            <h3 class="inner_title">기본정보</h3>

            <table class="mgr_table verHead">
              <tr>
                <th>상품코드</th>
                <td><input  name="p_code" type="text" value="${vo.prodCode}"  /></td>
                <th>상품명</th>
                <td><input class="1 readChange" name="p_name" type="text" value="${vo.prodName}" /></td>
              </tr>
              <tr>
                <th>상품가격</th>
                <td><input class="2 readChange" name="p_price" type="text" value="${vo.prodPrice}" /></td>

                <th>카테고리</th>
                <td>
                <% String Category = (String)request.getAttribute("category"); %>
                <% System.out.println(Category); %>
                    <select name='Category' >
                        <option value="fusion" <%="fusion".equals(Category)?"selected":""%>>fusion</option>
                        <option value="normal" <%="normal".equals(Category)?"selected":""%>>normal</option>
                        <option value="cake" <%="cake".equals(Category)?"selected":""%>>cake</option>
                        <option value="set" <%="set".equals(Category)?"selected":""%>>set</option>
                    </select>
				</td>
              </tr>
            </table>

            <h3 class="inner_title">사진정보</h3>
            <table class="mgr_table verHead" id="pht_table">
              <tr>
                <th>메인이미지</th>
                <td>
                  <input class="9 readChange" type="file" name="upFile1" />
                </td>
              </tr>
              <tr>
                <th>상세이미지</th>
                <td>
                  <input class="11 readChange" type="file" name="upFile3" />
                </td>
              </tr>
            </table>

            <div class="submit_wrapper">
              <input class="btn readChange" type="submit" value="상품수정" />
              <input class="btn" type="reset" value="상품삭제" />
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
    
    </script>
    