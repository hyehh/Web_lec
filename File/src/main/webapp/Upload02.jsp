<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	String file = "";
	
	String uploadPath = request.getRealPath("upload");
	
	try{
		MultipartRequest multi = new MultipartRequest(request, uploadPath, 10*1024, "utf-8", new DefaultFileRenamePolicy());
	
	}catch(Exception e){
		
	}
%>
</body>
</html>