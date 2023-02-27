<%@ page import="java.util.List" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="com.yedam.product.vo.ProductVO" %>
<%@ page import="com.yedam.product.mapper.ProductMapper" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Search</title>
</head>
<body>
<h1>Product Search</h1>
<form action="search.jsp" method="get">
  <label for="searchTerm">Search Term:</label>
  <input type="text" name="searchTerm" id="searchTerm">
  <input type="submit" value="Search">
</form>

<%
  // Get the search term from the request parameter
  String searchTerm = request.getParameter("searchTerm");
  
  // Call the searchProductsByName method of the ProductMapper interface

%>

<!-- Display the search results -->
<table>
  <thead>
    <tr>
      <th>Product Code</th>
      <th>Product Name</th>
      <th>Product Price</th>
      <th>Product Category</th>
      <th>Main Image</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="product" items="${products}">
      <tr>
        <td>${product.prodCode}</td>
        <td>${product.prodName}</td>
        <td>${product.prodPrice}</td>
        <td>${product.prodCategory}</td>
        <td><img src="${product.mainImage}" width="50" height="50" /></td>
      </tr>
    </c:forEach>
  </tbody>
</table>

</body>
</html>