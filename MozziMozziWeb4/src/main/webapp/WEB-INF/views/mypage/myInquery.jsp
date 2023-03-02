<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<body>
	<link rel="stylesheet" href="bootstrap/css/qa.css">
	<div class="mypost">
		<h4>내가쓴글</h4>
		<table class="myg_tab">
		<caption>내가쓴글 메뉴 탭</caption>
		<colgroup>
		<col style="width:273px;"><col style="width:273px;"><col style="width:274px;">
		</colgroup>
		<tbody>
			<tr>
                <td class="on"><a class="first short" href="MyInqueryList"><span>문의 / 답변</span></a></td>
				<td><span></span></td>
                <td></td>
			</tr>
		</tbody></table>
		<h5 class="list1">문의 / 답변</h5>
        <!-- 기간별조회 -->
		<div id="date_sort">
			
			

			<div class="search">
				<select class="selec" id="SearchKind" name="SearchKind">
					<option selected="selected" value="T">제목</option>
					<option value="TC">제목+내용</option>
				</select>
                <input class="txt" id="SearchText" name="SearchText" type="text" value="">
				<a class="btn_s_gray10" href="javascript:search();"><span>조회하기</span></a>
			</div>
		</div>
		<!-- //기간별조회 -->
		<div class="b_ta_info">
			<table class="b_table_grey table_style1" width="100%" summary="번호, 문의채널, 종류, 내용, 문의일, 상태">
				<caption>문의 답변 표</caption>
				<colgroup>
					<col style="width:5%;">
					<col style="width:13%;">
					<col style="width:15%;">
					<col>
					<col style="width:12%;">
					<col style="width:10%;">
				</colgroup>
				<thead>                
					<tr>
						<th>번호</th> 
						<th>문의채널</th>
						<th>종류</th>
						<th>내용</th>
						<th>문의일</th>
						<th><a href="javascript:ToogleLayer('dropStat')">상태 <span class="open">열기</span></a>
                            <div class="dropdown" id="dropStat" style="display:none">
							<ul>
								<li><a href="javascript:statSelect('S1');">접수완료</a></li>
								<li><a href="javascript:statSelect('S2');">처리중</a></li>
								<li><a href="javascript:statSelect('S3');">답변완료</a></li>
                                <input type="hidden" id="ResponseStat" name="ResponseStat" value="">
							</ul>
							</div>
                        </th>
					</tr>
				</thead>
				<tbody id="MyInqueryData">  
				</tbody>
			</table>
			<!-- 페이징 -->
			<div class="paging" id="MyInqueryPageing">                
			</div>
			<!--// 페이징 -->
		</div>
	</div>
