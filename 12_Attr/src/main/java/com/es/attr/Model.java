package com.es.attr;

import javax.servlet.http.HttpServletRequest;

public class Model {
	
	public static void getExchange(HttpServletRequest request) {
		
		//계산
		
		int price = Integer.parseInt(request.getParameter("p"));
		int money = Integer.parseInt(request.getParameter("m"));
		
		int ex = money - price;
		
		String say = "잔돈 여기 있습니다~~";
		
		if (price == money) {
			 say = "감사합니다";
		} else if (price > money) {
			 say = "돈 모자른데요...? -_-?";
			 
		} 
		
		// 결과 페이지에서 뭘 쓸지 생각하기!
		// price, money, ex, say
		
		
		// 처리한 데이터를 뷰(화면)로 전달하기 위해, 요청(request)이라는 바구니에 데이터를 담는 작업
//		request.setAttribute("price", price);
//		request.setAttribute("money", money);
//		request.setAttribute("ex", ex);
//		request.setAttribute("say", say);
		
		// 위에처럼 필요한 것들을 따로 실어서 보내도 되는데,
		// 그걸 한데 뭉쳐서 보내자 (객체)
		Result r = new Result(price, money, ex, say);
		request.setAttribute("rr", r);
		
		
		
		
		
	}
 public static void makevalue(HttpServletRequest request) {
	 int asd = Integer.parseInt(request.getParameter("asd"));
	 asd *=
 }


}
