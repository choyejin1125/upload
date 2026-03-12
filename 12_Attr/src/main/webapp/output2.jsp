<%@page import="com.es.attr.Result"%>
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
		//모델에서 이미 계산 처리함 - 따라서 여기에서는 값만 써주면 됨
		
		Result r = (Result) request.getAttribute("rr");
	
	%>
	
	<h1>계산 결과222222222222222222</h1>
	
	<div>
	<div>상품 가격 : <%= r.getPrice() %></div>
	<div>지불한 돈 : <%= r.getMoney() %></div>
	<div>잔돈 : <%=r.getEx() %></div>
	<div>멘트 : <%=r.getSay() %></div>
	</div>
	
	<hr>
	<%= request.getParameter("p") %> <br>
	<%= request.getParameter("m") %>
	
	<hr>
	<!--
		1. 돈이 모자를때만 버튼이 나오게 
		[얼마모자른데요??] 버튼을 누르면 output3.jsp에서 모자른 금액 안내
		상품이 10000원 내가 5000원 - 5000원이 모자라요~
	  -->

		

	
	<%
		if(r.getEx() < r.getPrice()){
			int howmuch = r.getPrice() - r.getMoney();
			
		%>
		<a href="output3.jsp?howmuch=<%=howmuch%>">
			<button>얼마 모자른데요??</button>	
		</a>
			
		<a href="output3.jsp?howmuch=<%=r.getEx() * -1 %>">
			<button>얼마 모자른데요??</button>	
		</a>	
		
		<a href="output3.jsp?howmuch=<%=r.getPrice() - r.getMoney()%>">
			<button>얼마 모자른데요??</button>	
		</a>	
		
		<button onclick="location.href='output3.jsp?howmuch=<%=r.getEx() * -1 %>'">얼마 모자라요??</button>
		
		<form action="output3.jsp">
			<input name="howmuch" value="<%=r.getEx() * -1 %>" type="hidden">
			<button>얼마요??</button>
		</form>
	<% } %>


</body>
</html>