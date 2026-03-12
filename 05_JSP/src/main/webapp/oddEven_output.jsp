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
		// 1. 값 받기 (스트링 -> 인티저 이용해 인트로 전환)
			int n = Integer.parseInt(request.getParameter("num"));
	
			if(n % 2 == 1) {  %>
				<h1 style="color: purple;">홀</h1>
		<% 	} else { %>
				<h1 style="color: tomato;">짝</h1>
		<% } %>

</body>
</html>

<!-- 
	JSP(JavaServer Pages)는 HTML 코드 안에 자바(Java) 코드를 삽입하여 웹 서버에서 동적으로 웹 페이지를 생성해 웹 브라우저에 돌려주는 기술입니다.
	쉽게 말해, 기본 뼈대는 HTML로 화면을 구성하고, 데이터베이스에서 회원 정보를 가져오거나 조건에 따라 다른 화면을 보여줘야 할 때 자바 코드를 부분적으로 끼워 넣는 방식입니다.
 -->