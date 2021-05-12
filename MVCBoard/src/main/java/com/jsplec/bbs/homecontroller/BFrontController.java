package com.jsplec.bbs.homecontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsplec.bbs.command.BCommnad;
import com.jsplec.bbs.command.BListCommand;

/**
 * Servlet implementation class BFrontController
 */
@WebServlet("*.do")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 흔적을 남기고 코딩하는 게 좋다!
		System.out.println("doGet()");
		//post로 들어오든 get으로 들어오든 actionDo로 들어옴!
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 흔적을 남기고 코딩하는 게 좋다!
		System.out.println("doPost()");
		actionDo(request, response);
	}

	// actionDo함수
	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo()");
		
		// 한글 처리
		request.setCharacterEncoding("utf-8");
		
		// 뒤에 쓰는 글자를 가져와야함! start2.do 이런 주소 뒤에 나오는 거 가져와야 한다는 의미!
		
		String uri = request.getRequestURI();
		// http://localhost:8080/MVCBoard/start2.do 이런 주소일 경우 /MVCBoard/start2.do 이렇게 가져오는 게 uri (유니폼 리소스 인포메이션 / 로케이터)
		// 전체는 url http://localhost:8080/MVCBoard/start2.do uri는 /MVCBoard/start2.do
		String conPath = request.getContextPath();
		// http://localhost:8080/MVCBoard/start2.do 이런 주소일 경우 /MVCBoard 이렇게 가져오는 게 conPath (프로젝트 이름)
		String com = uri.substring(conPath.length());
		// /start2.do 만 나오게 됨! substring 이 빼주는 것!!!
		
		String viewPage = null;
		// 어떤 뷰를 띄울 건지 변수 만듬
		BCommnad command = null;
 
//		System.out.println(uri);
//		System.out.println(conPath);
//		System.out.println(com);
		
		// if문 잘 안씀! 시간 빠르게 하기 위해 switch 사용!
		switch(com) {
		case("/list.do"):
//			BListCommand bListCommand = new BListCommand(); 이거 안쓰고 밑에꺼 쓰기! 이거 쓰면 다 달라지기에 command 인터페이스 사용
			command = new BListCommand();
			command.execute(request, response);
			viewPage = "list.jsp";
			break;
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}
} 
