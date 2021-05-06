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
	String siteName = request.getParameter("sitename");
	switch(siteName){
	case "naver" :
		response.sendRedirect("https://www.naver.com");
		break;
	case "daum" :
		response.sendRedirect("https://www.daum.net");
		break;
	case "google" :
		response.sendRedirect("https://www.google.com");
		break;
		default:
		// 사용자가 잘못입력한 경우, 다시 1번으로 보낸다.
		response.sendRedirect("http://localhost:8080/JSP_02/response_01.jsp");
		break;
	}
%>
</body>
</html>