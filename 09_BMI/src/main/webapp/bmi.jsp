<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    /* 배경 및 화면 중앙 정렬 */
    body {
        background-color: #f3ebf6; /* 연한 보라색 배경 */
        font-family: 'Malgun Gothic', sans-serif;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
    }

    /* 첫 번째 div (BMI 결과 타이틀) */
    body > div:nth-of-type(1) {
        font-size: 26px;
        font-weight: 900;
        color: #5e35b1; /* 진한 보라색 */
        margin-bottom: 20px;
    }

    /* 두 번째 div (결과 내용을 감싸는 하얀색 카드) */
    body > div:nth-of-type(2) {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 8px 16px rgba(103, 58, 183, 0.15);
        width: 250px;
    }

    /* 결과 텍스트 영역 기본 설정 */
    body > div:nth-of-type(2) > div {
        font-size: 16px;
        font-weight: bold;
        color: #4a148c; /* 결과값을 돋보이게 할 진한 보라색 */
        line-height: 1.6;
    }

    /* 항목 라벨 (이름, 키, 체중, BMI, 결과) */
    body > div:nth-of-type(2) > div > div {
        font-size: 13px;
        font-weight: bold;
        color: #7e57c2; /* 중간 보라색 */
        margin: 15px 0 2px 0;
        border-bottom: 1px solid #ede7f6; /* 연한 밑줄 추가 */
        padding-bottom: 4px;
    }

    /* 첫 번째 라벨(이름) 위에는 여백을 없앰 */
    body > div:nth-of-type(2) > div > div:first-child {
        margin-top: 0;
    }

    /* 다시하기 버튼 */
    button {
        width: 100%;
        background-color: #673ab7; /* 메인 보라색 */
        color: white;
        padding: 14px;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        margin-top: 30px;
    }

    /* 버튼에 마우스 올렸을 때 */
    button:hover {
        background-color: #5e35b1; /* 더 어두운 보라색 */
    }
</style>


</head>
<body>
	<% 
		// -1. 서버상 경로
		String path = request.getServletContext().getRealPath("uploadFile");
		System.out.println(path);
	
		// 0. 파일 업로드 (cos.jar을 lib에 , mr 객체 생성)
		MultipartRequest mr = new MultipartRequest(request, path, 
		1024 * 1024 * 20, // 20mb 최대 허용 용량
		"utf-8",
		new DefaultFileRenamePolicy()
		);
	
		// 1. 값 받기
		// -2. request를 mr로 변경!
		String n =	mr.getParameter("name");
		String h =	mr.getParameter("height");
		String w =	mr.getParameter("weight");
		
		String imgF = mr.getFilesystemName("imgFile"); // -3. 서버상 올라간 파일명
		
		// 2. 숫자변환
		double heightNum = Double.parseDouble(h);
		double weightNum = Double.parseDouble(w);
		
		// 3. 결과를 담을 변수 준비
		double bmi = weightNum / (heightNum/100 * heightNum/100);
		String result = "";
		
		// 4. 계산, if문 사용
		if (bmi < 18.5) {
			result = "저체중";
		} else if (bmi <= 22.9) {
			result = "정상";
		} else if (bmi <= 24.9) {
			result = "비만전단계";
		} else if (bmi <= 29.9) {
			result = "1단계 비만";
		} else if (bmi <= 34.9) {
			result = "2단계 비만";
		} else if (bmi >= 35) {
			result = "3단계 비만";
		} 			
		
		// 5. 소수점 1자리까지
				String formatBmi = String.format("%.1f", bmi);
		
		// 6. 포맷 객체 생성 및 패턴 지정
		DecimalFormat df = new DecimalFormat("###.#");

	    // 7. 숫자를 문자열로 변환
	    String formatHeight = df.format(heightNum); 
	    String formatWeight = df.format(weightNum); 
	    String formatBmi2 = df.format(bmi); 
	
	%>
	
	<div>BMI 결과</div>
	
	<!-- -4. 이미지 만들기 -->
	<div>
		<div>
			<img id="img" style="width: 200px" src="uploadFile/<%= imgF %>">
		
		</div>
		<div>
			<div>이름 </div>
			<%= n %>
			<div>키(CM)</div>
			<%= formatHeight %>
			<div>체중(KG)</div>
			<%= formatWeight %>
			<div>BMI</div>
			<%= formatBmi %>
			<div>결과</div>
			<%= result %>
		</div>
		<button onclick = "location.href='bmi.html'">다시하기</button>
	</div>

</body>
</html>