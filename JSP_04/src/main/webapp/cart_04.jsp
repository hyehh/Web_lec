<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
	// 파일 읽어오기
	BufferedReader reader = null;
	// BufferedReader 이거 클라스임
	try{
		String filePath = application.getRealPath("file.txt");
		reader = new BufferedReader(new FileReader(filePath));
		// BufferedReader는 읽어온 파일은 하나씩 차곡차곡 쌓아두는 역할
		// FileReader는 하나씩 불러오는 역할
		// 이제 Reader에 데이터가 쌓여있을 것
		while(true){
			String str = reader.readLine();
			// 한 줄을 읽어라 (엔터가 줄의 끝임)
			if(str == null) break; 	//읽을 게 없다는 의미
			out.println(str + "<br>");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			reader.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
</body>
</html>