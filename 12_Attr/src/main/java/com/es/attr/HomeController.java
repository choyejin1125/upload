package com.es.attr;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//request.getRequestDispatcher("input.html");
		// 현재 들어온 사용자 요청을 서버 내부에 있는 'input.html'이라는 다른 파일로 전달할 준비를 하라는 의미
		
		// 모든 요청을 컨트롤러로!
		// 여기서 실행!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		
		request.getRequestDispatcher("input.html").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 값 받기
		// 2. 계산 - 모델에서!!! - 모델 클래스 만들어주기.
		Model.getExchange(request);
		
		
		
		
		//지금까지 작업한 데이터(request)와 응답 준비물(response)을 모두 들고, 서버 내부에 있는 output.jsp 파일로 넘어가서 최종 화면을 사용자에게 보여줘라 라는 의미
		request.getRequestDispatcher("output2.jsp").forward(request, response);
	}

}
