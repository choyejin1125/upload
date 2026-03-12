package com.yj.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/OddEven")
public class OddEven extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String n = request.getParameter("num");
	System.out.println(n);
	int n2 = Integer.parseInt(n);
	
	response.setCharacterEncoding("utf-8");
	PrintWriter out = response.getWriter();
		out.print("<html>");
		
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("</head>");
		
		out.print("<body>");
		if (n2% 2 == 0) {
			out.println("짝");
		} else {
	out.println("홀");
		}
		
		out.print("</body>");
		
		out.print("</html>");
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}

	