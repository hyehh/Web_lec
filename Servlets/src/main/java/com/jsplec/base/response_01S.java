package com.jsplec.base;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class response_01S
 */
@WebServlet("/response_01S")
public class response_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public response_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	request.setCharacterEncoding("utf-8");
	String siteName = request.getParameter("sitename");
	// form태그는 무조건 request!
	response.setContentType("text/html; charset=utf-8");
	
	switch(siteName) {
	case "naver" :
		response.sendRedirect("https://www.naver.com");
		// 네이버는 우리 사이트가 아니기 때문에 forward 못 쓴다
		break;
	case "daum" :
		response.sendRedirect("https://www.daum.net");
		break;
	case "google" :
		response.sendRedirect("https://www.google.com");
		break;
	default :
		response.sendRedirect("https://www.yahoo.com");
		break;
	
	}
		
		
	}

}
