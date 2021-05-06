<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 입력 결과</title>
</head>
<body>
<%
	String name, id, pw, majorOne, protocol;
	String[] hobbies, majors;
	// request하고 나면 다 문자이기 때문에 꼭 String으로 받아야 함!
	
	request.setCharacterEncoding("utf-8");
	name = request.getParameter("name");
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	hobbies = request.getParameterValues("hobby");
	majors = request.getParameterValues("major");
	// radio 버튼은 굳이 배열 안써도 가능! getParameterValues도 안써도 됨!
	majorOne = request.getParameter("major");
	protocol = request.getParameter("protocol");
%>
	이름 : <%=name %> <br>
	아이디 : <%=id %> <br>
	패스워드 : <%=pw %> <br>
	취미 : <%=Arrays.toString(hobbies) %> <br>
	전공 : <%=Arrays.toString(majors) %> <br>
	전공2 : <%=majorOne %> <br>
	Protocol : <%=protocol %> <br>
</body>
</html>