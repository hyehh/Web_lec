<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성인 확인</title>
</head>
<body>
	<%
	int age = Integer.parseInt(request.getParameter("age"));
	String yes = URLDecoder.decode(request.getParameter("yes"), "utf-8");
	String possible = URLDecoder.decode(request.getParameter("possible"), "utf-8");
	%>
	<h1><%=yes %></h1>
	당신의 나이는 <%=age %>살 이므로 주류 구매가 <%=possible %>가능합니다.<br>
	<a href = "ResponseAge_05.jsp">처음으로 이동</a><br>
</body>
</html>