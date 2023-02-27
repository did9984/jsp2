<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<link rel="stylesheet" type="text/css" href="bootstrap/css/admin_style.css">
  
      <!-- top, bottom 제외 페이지 전체-->
<div id="main">
    
    <div id="btn_manager_wrapper">  
    <!-- (버튼메뉴 + manager) -->

        <div id="admin_side">

            <div id="section">
                관리자모드
            </div>
    
            <!-- 메뉴 부분 -->
            <div id="manager_btn_wrapper">
                <ul>
                   
                    <a href="#">
                        <li>
                            <span class="text">회원관리</span>
        
                            <!-- default 아이콘 -->
                            <span class="icon"><i class="fas fa-chevron-left"></i></span>
        
                            <!-- member_list.jsp / member_view.jsp :: -->
                            <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                       
                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <span class="text">상품등록</span>
                            
                            <!-- default 아이콘 -->
                            <span class="icon"><i class="fas fa-chevron-left"></i></span>
        
                             <!-- order_list.jsp / order_view.jsp :: -->
                            <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
        
                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <span class="text">상품목록</span>
                            
                            <!-- default 아이콘 -->
                            <span class="icon"><i class="fas fa-chevron-left"></i></span>
                        
                             <!-- goods_master.jsp, goods_insert.jsp, goods_view.jsp, goods_stock.jsp :: -->
                            <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                        
                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <span class="text">주문관리</span>
                            
                            <!-- default 아이콘 -->
                            <span class="icon"><i class="fas fa-chevron-left"></i></span>
                        
                             <!-- 접속관리 페이지 누락됨 :: -->
                            <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                        
                        </li>
                    </a>
                    <a href="#">
                        <li>
                            <span class="text">리뷰관리</span>
                            
                            <!-- default 아이콘 -->
                            <span class="icon"><i class="fas fa-chevron-left"></i></span>
                        
                             <!-- qna_list.jsp / qna_view.jsp :: -->
                            <!-- <span class="icon"><i class="fas fa-chevron-right"></i></span> -->
                        
                        </li>
                    </a>                   
                </ul>
            </div>
        

        </div>   <!-- #btn_wrapper -->
    <!--</div>   #btn_manager_wrapper (버튼메뉴 + manager) : 하위 페이지에서 닫아야함-->    
   <!--</div>  #main (상단요약 + 버튼 + manager) : 하위페이지에서 닫아야함-->





<!--------------->
<!--  작업 영역  -->
<!--------------->
 <body>    
    <div id="manager">  
    
        <h1 class="title">회원 정보</h1>

        <form method="post" action="goods_insertProc.jsp?flag=insert"
            enctype="multipart/form-data">
            <!-- enctype="multipart/form-data" 일때에는 post방식으로 보낸다. 
        대신에 action을 통해서 action="productProc.jsp?flag=insert" 를 해줘야한다.-->
    
            <h3 class="inner_title">회원정보 검색</h3>


                        <table class="mgr_table verHead" id="search_table">
                            <tr>
                                <th>검색어</th>
                                <td>
                                    <select id="select_type">
                                        <option>ID</option>                                        
                                    </select>
                                </td>
                                <td>
                                    <input id="select_value" placeholder="내용을 입력해주세요">
                                </td>
                                <td>
                                    <input class="btn" type="button" value="검색" id="member_search_btn">
                                </td>
                            </tr>
                        </table>
    
            <h3 class="inner_title">회원 정보 List</h3>
                        <table class="mgr_table verHead" id="result_table">
                            <tr>
                                <th>ID</th>
                                <th>이름</th>
                                <th>생년월일</th>
                                <th>회원가입일</th>
                                <th>이메일</th>
                                <th>연락처</th>
                                <th>주소</th>
                            </tr>
                        </table>
        </form>
    
    </div>	
    
    
<!----------------->
<!--  작업 영역 끝 -->
<!----------------->
    
</div> <!--  #btn_manager_wrapper (버튼메뉴 + manager) : admin_side.jsp 에서 열림-->
</div> <!-- #main (상단요약 + 버튼 + manager) : admin_side.jsp 에서 열림-->
    

<script src="bootstrap/js/member_list.js"></script>
 