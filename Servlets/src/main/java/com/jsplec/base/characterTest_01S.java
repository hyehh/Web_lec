package com.jsplec.base;
 
import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
 * Servlet implementation class characterTest_01S
 */
@WebServlet("/characterTest_01S")
public class characterTest_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public characterTest_01S() {
        super();
        // TODO Auto-generated constructor stub
    }
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
 
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String animal = request.getParameter("animal");
		String[] food = request.getParameterValues("food");
		// form태그는 무조건 request!
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>성격 테스트</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h3>성격 테스트</h3>");
		writer.println(name + "님의 성격 테스트 결과 <br>");
		if(food.length==1) {
			writer.println(color + "색을 좋아하는 당신은 " + animal + "그리고 " + food[0] + "을 좋아하는 성격 입니다. <br>");
		}else if(food.length==2) {
			writer.println(color + "색을 좋아하는 당신은 " + animal + "그리고 " + food[0] + "과 " + food[1] + "을 좋아하는 성격 입니다. <br>");
		}else {
			writer.println(color + "색을 좋아하는 당신은 " + animal + "그리고 " + food[0] + "과 " + food[1] +  "과 " + food[2] + "을 좋아하는 성격 입니다. <br>");
		}
		writer.println("--------------------------------- <br>");
		writer.println("저장 되었습니다! <br>");
		writer.println("</body>");
		writer.println("</html>");
		
	}
 
}