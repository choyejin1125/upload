<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.ForeachStatement"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
		String[] exer = request.getParameterValues("check");
			
		String result = "";
		for(String hobby : exer){
			result = result + hobby + " / ";
		}
		
		
		String korResult = "";
		for(String hobby : exer){
			switch (hobby) {
			case "a":
				korResult += "축구 ";
				break;
			case "b":
				korResult += "농구 ";
				break;
			case "c":
				korResult += "배드민턴 ";
				break;
			}
			
		}
		
		for(String hobby : exer){ %>
			<h1> <%= hobby %></h1>
		<% } %>
		<hr>
		
		<h1><%=result %></h1>
		<h1><%=korResult %></h1>





		<hr>
		version2.
		
		<%
			Map<String, String> vals = new HashMap();
				vals.put("soccer", "축구");
				vals.put("basketball", "농구");
				vals.put("badminton", "배드민턴");
				
			for(String s : exer){ %>
				<h1><%= vals.get(s) %></h1>
			<% } %>	
		
		
	


</body>
</html>