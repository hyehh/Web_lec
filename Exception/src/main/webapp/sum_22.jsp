<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 악한 사용자! (오류처리 화면 보여주면 안됨!) 방법 1
	
	int num1 = 0, num2 = 0, result = 0;	
	try{
		
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
		
		result =  num1 + num2;
	}catch(Exception e){
		RequestDispatcher dispatcher = request.getRequestDispatcher("DataError.jsp");
		dispatcher.forward(request, response);
		
	}
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>덧셈 결과</title>
</head>
<body>
	<%=num1 %> + <%=num2 %> = <%=result %>
</body>
</html>