package com.yj.servlet;

import java.io.IOException;
import java.io.ObjectInputFilter.Status;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String i = request.getParameter("id");
	String p = request.getParameter("pw");
	System.out.println(i);
	System.out.println(p);
	response.setCharacterEncoding("utf-8");
	PrintWriter out = response.getWriter();
		out.print("<html>");
		
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("</head>");
		
		out.print("<body>");
		
		String status = "";

		
		if ("mz".equals(i)) {
			if ("1004".equals(p)) {
				out.print("로그인 성공");
				
			}else {
				out.print("비번오류");
			}
		}else {
			out.print("아이디를 찾을 수 없습니다");
		}
		out.print("<h1>ID : " + i + "</h1>");
		out.print("PW : " + p);
		out.print(status);
		
		out.print("</body>");
		
		out.print("</html>");
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		
		String i = request.getParameter("id");
		String p = request.getParameter("pw");
		System.out.println(i);
		System.out.println(p);
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
			out.print("<html>");
			
			out.print("<head>");
			out.print("<meta charset=\"UTF-8\">");
			out.print("</head>");
			
			out.print("<body>");
			
			String status = "";

			
			if ("mz".equals(i)) {
				if ("1004".equals(p)) {
					out.print("로그인 성공");
					
				}else {
					out.print("비번오류");
				}
			}else {
				out.print("아이디를 찾을 수 없습니다");
			}
			out.print("<h1>ID : " + i + "</h1>");
			out.print("PW : " + p);
			out.print(status);
			
			out.print("</body>");
			
			out.print("</html>");
	}

}

	