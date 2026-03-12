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

	









</body>
</html>