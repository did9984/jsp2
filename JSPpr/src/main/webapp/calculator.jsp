<%
int x = 3;
int y = 4; 

// 자바코드를 사용할수있게해준다
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input {
	width: 50px;
	height: 50px;
}

.output {
	height: 50px;
	background: #e9e9e9;
	font-size: 24px;
	font-weight:bold;
	text-align: right;
	padding: 0px 5px; 
}
</style>
</head>
<body>
	<div>
		<form action="Calc3" method="post">
			<!--  작동시킬 url 태그      -->
			<!-- post : 보완문제점이 있을 수 있고, 또 url 길이제한으로 인해 post 메서드로 전달한다 -->
			<table>
				<tr>
					<!-- html은 정적인 문서라 0값이 바뀌지않는다-->
					<td class="output" colspan="4">${3+4} </td>
					<!-- 계산기가장위 빈칸  -->
				</tr>
				<tr>
					<!-- 첫째줄  -->
					<td><input type="submit" name="add" value="CE"></td>
					<td><input type="submit" name="add" value="C"></td>
					<td><input type="submit" name="add" value="BS"></td>
					<td><input type="submit" name="add" value="÷"></td>
				</tr>
				<tr>
					<!-- 둘째줄  -->
					<td><input type="submit" name="value" value="7"></td>
					<td><input type="submit" name="value" value="8"></td>
					<td><input type="submit" name="value" value="9"></td>
					<td><input type="submit" name="add" value="*"></td>
				</tr>
				<tr>
					<!-- 셋째줄  -->
					<td><input type="submit" name="value" value="4"></td>
					<td><input type="submit" name="value" value="5"></td>
					<td><input type="submit" name="value" value="6"></td>
					<td><input type="submit" name="add" value="-"></td>
				</tr>
				<tr>
					<!-- 넷째줄  -->
					<td><input type="submit" name="value" value="1"></td>
					<td><input type="submit" name="value" value="2"></td>
					<td><input type="submit" name="value" value="3"></td>
					<td><input type="submit" name="add" value="+"></td>
				</tr>
				<tr>
					<!-- 다섯째줄  -->
					<td></td>
					<td><input type="submit" name="value" value="0"></td>
					<td><input type="submit" name="dot" value="."></td>
					<td><input type="submit" name="add" value="="></td>
				</tr>
			</table>


		</form>
	</div>
</body>
</html>