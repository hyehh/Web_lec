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
	String age = request.getParameter("age");
	// 여기서는 계산을 할 필요가 없기 때문에 int로 변경해줄 필요가 없음!
	%>
	<h1>성인</h1>
	당신의 나이는 <%=age %>살 이므로 주류 구매가 가능합니다.<br>
	<a href = "ResponseAge_01.jsp">처음으로 이동</a><br>
<!-- 	<a href = "http://localhost:8080/JSP_02/ResponseAge_01.jsp">처음으로 이동</a><br>
		같은 프로젝트의 경우 http://~ 이거 안적어도 가능! -->
</body>
</html>