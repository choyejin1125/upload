<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- html과 다른 점(위의 한 줄) -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

${ 1 + 2 } <br>
	${ 5 * 5} <br>
	
	<%
		int A = 10 + 20;
	%>
	
	<!-- 둘 다 정체는 자바인데,
		servelet : html이 자바 안에 있는 것 (html in java)
		jsp : java가 html 안에 있는 것 (java in html)
	 -->

</body>
</html>