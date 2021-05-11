<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<String> items =  new ArrayList<String>();
		// <>으로 타입 정해줘야 함 Arraylist는 클라스임
		items.add("딸기");
		items.add("오렌지");
		items.add("복숭아");
		
		request.setAttribute("FRUITS", items);
		RequestDispatcher dispatcher = request.getRequestDispatcher("EL_12.jsp");
		dispatcher.forward(request, response); 
		/* response.sendRedirect("EL_12.jsp"); 이거 쓰려면 ?있어야 함! 아니면 session이 있으면 됨! */
	%>
</body>
</html>