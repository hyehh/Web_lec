<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="DataError.jsp"%>
<%
// 디자인 팀이랑 같이 개발하면 위로 올려줘야 함!
	// 악한 사용자 방법 2
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
	int result =  num1 + num2;
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