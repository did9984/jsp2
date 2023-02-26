<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- ------------------------------------------------------------- -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
pageContext.setAttribute("result", "hello");
%>
<body>
	
		<%=request.getAttribute("result")%>입니다.
		${requestScope.result}<br><!-- request 를안붙이면 페이지안의 result =hello 를 불러온다  -->
		${names[1]}<br> <!-- Spag.java의 키워드를 불러옴  -->
	    ${notice.title}<br> 
	    ${result}<br>
	    ${param.n/2}<br>
	    ${header.accept}<br>  
</body>
</html>