package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MulTable_01S
 */
@WebServlet("/MulTable_01S")
public class MulTable_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MulTable_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8"); // 무조건 제일 위!!!
		
		// TODO Auto-generated method stub
		PrintWriter writer = response.getWriter();
		// 선언은 가장 위에 해주는 게 좋음
		// new를 쓰지 않는 이유는 response.getWriter()라는 이미 있는 걸 다시 사용하겠다는 의미!
		int number = Integer.parseInt(request.getParameter("number"));
		
		
		for(int i=1; i<=9; i++) {
			writer.println("<title>" + number + "단-결과화면</title>");
			writer.println(number + " X " + i + " = " + (number*i) + "<br>");
			// 여기에서 <html> 이런게 필요없는 이유는 MulTable_01S를 받아와서 이미 html이 있기 때문!
			
		}
		
	}

}