package com.yj.fileupload;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.Spring;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
@WebServlet("/FileUpload")
public class FileUpload extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
			//1.저장 경로 (로컬 , 실제서버상 경로)
		String savePath ="C:\\yj\\nya";
		System.out.println(savePath);
		//서버를 나만 쓰는게 아니라 여러 사람이 사용함
		// 로컬 파일 이름은 얼마든지 같거나 중복될 수있음
		// 근데 서버에서 겹치면 중복되면 안되니까 파일명 처리가 필요한..jpg,jpg1,jpg2...
		
		
		
		//2 파일처리
		MultipartRequest mr = new MultipartRequest(request, savePath, 
				30*1024*1024,
				"utf-8", 
				new DefaultFileRenamePolicy());
	//값 받기 (박스 포장을 했으니 그걸 까야 req 비닐에 접근 가능
		
		String name = request.getParameter("name");
		System.out.println(name);
		// 파일명 읽을때
		// 아까 중복 안되게 처리한것때문에 올릴때 파일명이 중요하네 아니고
		// 서버상에 올라간 그 이름이 중요
		request.getParameter("pic");
		String pic = mr.getFilesystemName("pic");
		String etc = mr.getFilesystemName("etc");
		System.out.println(pic);
		System.out.println(etc);
		
		response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        out.print("<html>");
        out.print("<head>");
        out.print("<meta charset=\"UTF-8\">");
        out.print("</head>");
        out.print("<body>");

        out.print("<h1>" + name + "</h1>");
        out.printf("<h1><img src='imgFile/%s'></h1>", pic);
        out.printf("<h1>%s</h1>", etc);

        out.printf("<h1><a href='imgFile/%s'>사진보기</a></h1>", pic);
        out.printf("<h1><a href='imgFile/%s'>파일 다운로드</a></h1>", etc);




        out.print("</body>");
        out.print("</html>");
	
	
	
	
	
	}

}