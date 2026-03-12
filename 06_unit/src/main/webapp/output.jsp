<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bitcount+Grid+Double+Ink:wght@100..900&display=swap" rel="stylesheet">
<style type="text/css">
body{
     font-family: "Bitcount Grid Double Ink", system-ui;
    background-color:#f5f5f5;
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

body > div{
    padding:30px;
    border-radius:10px;
    box-shadow:0 4px 10px rgba(0,0,0,0.1);
    width:250px;
    display:flex;
    flex-direction:column;
    gap:12px;
    text-align:center;
}

body > div > div:first-child{
    font-size:20px;
    font-weight:bold;
    margin-bottom:10px;
}

button{
    margin-top:10px;
    padding:10px;
    border:none;
    border-radius:5px;
    background-color:#4CAF50;
    color:white;
    font-size:14px;
    cursor:pointer;
}

button:hover{
    background-color:#45a049;
}
</style>
</head>
<body>
	<%
	String unit =	request.getParameter("unit");
	double val = Double.parseDouble(request.getParameter("num"));
	
	if(unit.equals("a")){ %>
	<div style="background-color: #fabef2;">
		<div>변환결과</div>
		<div><%=val %> <span style="color: red;">cm</span></div>
		<div>↓</div>
		<div><%=String.format("%.1f", val / 2.54) %> <span style="color: red;">inch</span></div>
		<div> <button onclick="location.href='input.html'">돌아가기</button> </div>
	</div>
		
	<% }else if(unit.equals("b")){%>
	<div style="background-color: #42DCE1;">
		<div>변환결과</div>
		<div><%=val %> <span style="color: green;">㎡</span> </div>
		<div>↓</div>
		<div><%=String.format("%.1f", val * 0.3025) %> <span style="color: green;">평</span></div>
		<div> <button onclick="location.href='input.html'">돌아가기</button> </div>
	</div>
	
	<% }else if(unit.equals("c")){%>
	<div style="background-color: #faf5b2;">
		<div>변환결과</div>
		<div><%=val %> <span style="color: gold;">℃</span></div>
		<div>↓</div>
		<div><%=String.format("%.1f", val * 1.8 + 32) %> <span style="color: gold;">℉</span></div>
		<div> <button onclick="location.href='input.html'">돌아가기</button> </div>
	</div>

	<% }else if(unit.equals("d")){%>
	<div style="background-color: #fbd9ca;">
		<div>변환결과</div>
		<div><%=val %> <span style="color: pink;">km/h</span></div>
		<div>↓</div>
		<div><%=String.format("%.1f", val*0.621371) %> <span style="color: pink;">mi/h</span></div>
		<div> <button onclick="location.href='input.html'">돌아가기</button> </div>
	</div>
	<% } %>
	
</body>
</html>