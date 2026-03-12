<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>second page~~</h1>
	
	<%
		// 1. 값 받기
			int aa = Integer.parseInt(request.getParameter("a"));
			int bb = Integer.parseInt(request.getParameter("b"));
			
			int cc = aa + bb;
	
		/*
		(1) parameter
			html에서 만들어진 값.
			html의 input name, url(get요청시 만든 문자열) 등에서 만들어짐
			자료형은 기본적으로 String
			이것 외에 String[] - 배열 
			그런 값이 request 객체에 실려서 전송됨.
		
		(2) attribute
			java에서 만들어진 값.
			자료형은 Object(자바의 최상위 클래스 - 다 실을 수 있음.)
			request 객체에 실려서 전송됨.
		*/
		
		// 퍼스트에서 세컨드로 a,b를 전송
		//세컨드에서 서드로 int cc를 전송
		request.setAttribute("ccc", cc);
		
		
		/*
			자동이동 시리즈 3개
			1. redirect - 공사중 / 작업 만료 처리된 페이지 만들 때 사용 - 값을 잃어버림.
			
			2. forward - first에서 second로 넘어올 때 요청한 정보를 third까지 보내줌.
			
				forward 주로 쓰는데, first에서 second로 넘어온 정보를 request까지 thrid로 보내줌
			    redirect는 그냥 넘기는거 (문자열로 원하는 값을 명시해서 보내는건 가능)
	
			    forward는 request에 값이 실려서 넘어오는건데
			    그 request를 같이 넘기니까 third가 그 값을 쓸 수 있음
		    
		    3. include (어떤 jsp 속에 jsp) - 관심없음.
		
		*/
		
		// first에서 바로 third로!
		// response.sendRedirect("third.jsp");
		// 값을 잃어버린다는 특징 있음. - 서버 오류 터짐.
		
		//forward
		RequestDispatcher rd = request.getRequestDispatcher("third.jsp");
		rd.forward(request, response);
		
	%>
	
	<%= cc %>

</body>
</html>