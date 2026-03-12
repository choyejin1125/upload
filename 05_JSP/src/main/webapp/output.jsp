<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		  <!-- 자바 코드 사용 가능 -->
		  <!-- 4. 함수 사용
			코드에서 <%! %>는 JSP (JavaServer Pages)에서 사용되는 선언문 태그를 의미합니다.
			주로 JSP 페이지 내에서 전역 변수(클래스의 멤버 변수)나 메서드(함수)를 정의할 때 사용됩니다.
		   -->
		  <%!
		  	public int getMok(int a, int b){
				 return a / b ;
			 }
		  %>
		  
		  
		 <%
		 
		 // 1. x와 y의 값을 받기.
		 // String x = request.getParameter("xx");
		 // String y = request.getParameter("yy");
		 
		 // 2. 스트링을 인트로 만들어야 함 (인티저 사용)
		 int x = Integer.parseInt(request.getParameter("xx"));
		 int y = Integer.parseInt(request.getParameter("yy"));
		 
		 int hap = x + y;
		 int cha = x - y;
		 int gob = x * y;
		 int mok = x / y;
		 int mok2 = getMok(x, y);
		 
		 %>
		 
		 <!-- 5. 현재 상태에서 총합이 10이 넘을때만 결과 화면 나오게. -->
		 	<%
		 		if(hap > 10){ 
		 						%>
		 
		 <!-- 여기는 html 공간(연산되지 않음) -->
		 <!-- 3. 변수만 쓸 때 "="추가해주기 -->
		 <div style="background-color: ivory; border: 2px solid pink">
		 <h1> <%= x %> + <%= y %> = <%= hap %> </h1>
		 <h1> <%= x %> - <%= y %> = <%= cha %> </h1>
		 <h1> <%= x %> * <%= y %> = <%= gob %> </h1>
		 <h1> <%= x %> / <%= y %> = <%= mok %> </h1>
		 
		 <h1><%= mok2 %></h1>
		 <h1><%= getMok(x, y) %></h1>
		 </div>
		 
		 <!-- 5. 현재 상태에서 총합이 10이 넘을때만 결과 화면 나오게. 여기까지!!!!!!!-->
		 <% } %>
		
		 
		 
		 
		 

</body>
</html>