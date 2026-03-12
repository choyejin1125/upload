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
		// 중복되는 것을 찾고, 변수를 잘 준비하기, 자바로 중복되는 것을 최대한 1번에 다 써라!
			int n = Integer.parseInt(request.getParameter("num"));
	
			String result ="";
			String color ="";
			
			if(n % 2 == 1) {  
				result = "홀";
				color = "purple";
			} else {
				result = "짝";
				color = "tomato";
				
			}	
			
			%>
			
			<h1 style = "color: <%= color %>"><%= result %></h1>

</body>
</html>

