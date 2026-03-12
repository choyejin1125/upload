<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//1. 값 받기
		String age = request.getParameter("userName");
		int a = Integer.parseInt(age);
		String result = null;
		
		if(a >= 20){
			result = "안녕하세요";
		} else {
			result = "안녕";
		}
	
	%>
	
	<h1><%= result %></h1>


</body>
</html>