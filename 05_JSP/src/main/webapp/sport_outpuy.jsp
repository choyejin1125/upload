<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
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
String[] sports = request.getParameterValues("sport");

String result = "";
for(String ss : sports){
	result += ss + " / ";
	
}

String Engresult = "";
for(String ss : sports){
	switch(ss){
	case "축구":
		Engresult += "soccer";
		break;
	case "농구":
		Engresult += "basketball";
		break;
	case "배드민턴":
		Engresult += "badminton";
		break;
	}
}
%>
<%= Engresult %>

	
	
	

<hr>
<% 
Map<String, String> vals = new HashMap();
	vals.put("축구", "soccer");
	vals.put("농구", "basketball");
	vals.put("배드민턴", "badminton");
	
	for(String s : sports){ %>
	<h1><%= vals.get(s) %></h1>
<%} %>




</body>
</html>