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
		// 1. 값만 받는 공간. 계산을 여기서 안하고 모델(M)에서 끝난 것을 여기서 받아쓰기만 함.
		
		String a = request.getParameter("a");
		String b = request.getParameter("b");
		Object c = request.getAttribute("ccc");
	
	%>
<h1>계산 결과</h1>
<%=a%> + <%=b%> = <%=c%>

</body>
</html>