<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type ="text/css">
h2{
color: red
}
<!-- 
HTML 문서 내부에서 **CSS(스타일 시트)**를 사용하여 특정 부분의 디자인을 변경
type="text/css" : 이 스타일 코드가 CSS 형식의 텍스트라는 것을 명시하는 속성입니다. 
(참고로 최신 HTML5 표준에서는 이 부분을 생략하고 그냥 <style>이라고만 적어도 완벽하게 동작
이 문서 안에 있는 모든 <h2> (제목 2) 태그에 괄호 { } 안의 디자인을 적용하겠다는 의미
-->

</style>
</head>
<body>

	<%
	// 한글 입력하고 싶다면 밑줄 추가
	request.setCharacterEncoding("utf-8");
	
		// 1. 값 받기
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
		String result = null;
		if(id.equals("es")){
			if(pw.equals("1004")){
				result = "로그인 성공!";
			} else {
				result = "비번 오류";
			}
		} else {
			result = "존재하지 않는 회원입니다.";
		}
	
	%>
	
	<h1>ID : <%= id %></h1>
	<h1>PW : <%= pw %></h1>
	<h2><%= result %></h2>

		

</body>
</html>