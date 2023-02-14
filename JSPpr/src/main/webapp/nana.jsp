<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    response.setCharacterEncoding("UTF-8"); // utf -8 로설정 
    response.setContentType("text/html; charset:UTF-8"); // 브라우저가 utf-8로 읽어들이게 설정  
	
	
	
	String cnt_ =request.getParameter("cnt");


	
	int cnt =100; //cnt 의 값을 임시 지정 
	if (cnt_ != null && !cnt_.equals("")) { //만약 cnt 값이 없다면 100을 불러와서 주소창에 입력  
		cnt = Integer.parseInt(cnt_); // url 옆에 ? cnt =숫자 입력시 값 주기 가능 
	} %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% for(int i=0;i<cnt;i++){%>
안녕 Servlet!!<br >
<% } %>
  
</body>
</html>