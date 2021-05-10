<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 결과</title>
</head>
<body>
	<h2>회원 가입 결과</h2>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String num3 = request.getParameter("num3");
		String email = request.getParameter("email");
	%>
	
	<p> 아이디 : <%=id %> </p>
	<p> 비밀번호 : <%=pw %> </p>
	<p> 이름 : <%=name %> </p>
	<p> 연락처 : <%=num1 %> - <%=num2 %> - <%=num3 %> </p>
	<p> 이메일 : <%=email %> </p>
</body>
</html>