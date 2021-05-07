<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 내장변수</title>
<!-- 내장변수란 import안해도 사용가능한 변수 -->
</head>
<body>
	<!-- 진짜 위치 찾기! -->
	<%
	// 어느 프로젝트에 있는지 알려줌
		String appPath = application.getContextPath();
		/* 글자, 숫자, 이미지 등을 총칭해 context라 함 */
	// 진짜 위치를 알려줌
		String filePath = application.getRealPath("input.txt");
	%>
	<%=appPath %> <br>
	<%=filePath %>
</body>
</html>