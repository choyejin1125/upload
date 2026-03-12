

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calc")
public class Calc extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	int xx = Integer.parseInt(request.getParameter("x"));
	int yy = Integer.parseInt(request.getParameter("y"));
	System.out.println(xx);
	System.out.println(yy);
	
	response.setCharacterEncoding("utf-8");
	PrintWriter out = response.getWriter();
		out.print("<html>");
		
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("</head>");
		
		out.print("<body>");
		out.print("<div style=\"width: 500px; background-color: ivory; border: 2px solid\">");

		String[] op = {"+", "-", "*", "/"};
for (String operator : op) {

    // a, b 계산
    if (operator.equals("+")) {
        out.printf("<div>%d %s %d = %d</div>", xx, operator, yy, xx + yy);

    } else if (operator.equals("-")) {
        out.printf("<div>%d %s %d = %d</div>", xx, operator, yy, xx - yy);

    } else if (operator.equals("*")) {
        out.printf("<div>%d %s %d = %d</div>", xx, operator, yy, xx * yy);

    } else if (operator.equals("/")) {

        if (yy != 0) {
            double result = xx / (double) yy;
            out.printf("<div>%d %s %d = %.1f</div>", xx, operator, yy, result);
        } else {
            out.print("<div>0으로 나눌 수 없어요..</div>");
        }
    }
}
		/*
		 * DDONG NER MOO JOHA HAJIMAYO!
		 */
		

		out.print("</div>");
		out.print("</body>");
		
		out.print("</html>");
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
  
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

	