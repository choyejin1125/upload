<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    /* 1. 화면 전체를 사용하여 결과창을 정중앙에 배치 */
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-color: #f0f2f5;
        font-family: 'Malgun Gothic', sans-serif;
    }

    /* 2. 전체를 감싸는 가장 바깥 div (컨테이너) */
    body > div {
        width: 320px;
        background-color: white;
        border: 2px solid #333; /* 폼 화면과 동일한 진한 테두리 */
        text-align: center;
        box-shadow: 5px 5px 15px rgba(0,0,0,0.1);
    }

    /* 3. '변환결과' 제목 부분 */
    body > div > div:first-child {
        font-size: 22px;
        font-weight: bold;
        padding: 15px;
        border-bottom: 2px solid #333;
    }

    /* 4. 결과 출력 영역 (연한 보라색 배경) */
    body > div > div:nth-child(2) {
        background-color: #e6e6fa; /* 라벤더색 배경 */
        padding: 40px 20px;
        font-size: 24px; /* 숫자가 잘 보이게 폰트 크기 키움 */
        font-weight: bold;
        color: #333;
    }

    /* 5. 가운데 화살표 (↓) 디자인 */
    body > div > div:nth-child(2) > div:nth-child(2) {
        font-size: 30px;
        margin: 20px 0;
    }

/* 6. 돌아가기 버튼 (button 태그) */
    button {
        display: block;
        width: 100%; /* 버튼이 가로로 꽉 차도록 설정 */
        background-color: white;
        color: black;
        border: none; /* 버튼의 기본 볼록한 테두리 제거 */
        font-weight: bold;
        font-size: 16px;
        padding: 15px;
        cursor: pointer; /* 마우스를 올렸을 때 손가락 모양 커서로 변경 */
    }

    /* 버튼에 마우스를 올렸을 때 효과 */
    button:hover {
        background-color: #f0f0f0;
    }
</style>

</head>
<body>

	<%
		// 1. 값 받기
		String inputValue = request.getParameter("inputValue");
		String unitType = request.getParameter("unitType");
		
		// 2. 숫자 변환
		double toNumber	= Double.parseDouble(inputValue);
		
		// 계산 결과를 담을 변수 준비
		double resultValue = 0.0;
		String fromUnit = "";
		String toUnit = "";
		
		// 🌟 배경색을 담을 변수 추가
	    String bgColor = "";
		
		// 3. 계산
		switch(unitType) {
		
			case "length" : // cm -> inch (1인치 = 2.54cm)
				resultValue = toNumber / 2.54;
				fromUnit = "cm";
				toUnit = "inch";
				bgColor = "#ffdddd"; // 연한 분홍색
				break;
				
			case "area" : // m² -> 평	
				resultValue = toNumber * 0.3025;
				fromUnit = "m²";
				toUnit = "평";
				bgColor = "#ddffdd"; // 연한 초록색
				break;
				
			case "temperature" : // ℃ -> ℉
				resultValue = (toNumber * 1.8) + 32;
				fromUnit = "℃";
				toUnit = "℉";
				bgColor = "#fff5cc"; // 연한 노란색
				break;
				
			case "speed" : // km/h -> mi/h	
				resultValue = toNumber / 1.609344;
				fromUnit = "km/h";
				toUnit = "mi/h";
				bgColor = "#ddeeff"; // 연한 하늘색
				break;
		}
		
		// 4. 소수점 1자리까지
		String formatInput = String.format("%.1f", toNumber);
		String formatResult = String.format("%.1f", resultValue);
	%>
	
	<div>
		<div>변환결과</div>
			<div style="background-color: <%= bgColor %>;">
				<div><%= formatInput %> <%= fromUnit %></div>
				<div>↓</div>
				<div><%= formatResult %> <%= toUnit %></div>
			</div>
			<button onclick = "location.href='test.html'">돌아가기</button>		
		</div>
	


</body>
</html>