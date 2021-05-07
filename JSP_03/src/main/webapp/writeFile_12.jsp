<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 저장 결과</title>
</head>
<body>
	 <h2>파일 저장 결과</h2>
	 <%
	 	request.setCharacterEncoding("utf-8");
	 	String name = request.getParameter("name");
	 	String title = request.getParameter("title");
	 	String content = request.getParameter("content");
	 	
	 	String filename = "file.txt";
	 	
	 	PrintWriter writer = null;
	 	String result;
	 	// 잘되었는지 판단은 여기서 하고 그걸 13번으로 넘겨줄 것임
	 	try{
	 		String filePath = application.getRealPath("/" + filename);
	 		// 꼭 / 있어야 함
	 		writer = new PrintWriter(filePath);
	 		// 지금까지 위치와 파일이름 알려준 것
	 		writer.println("제목 : " + title);
	 		writer.println("글쓴이 : " + name);
	 		writer.println(content);
	 		result = "success";
	 	}catch(Exception e){
	 		result = "fail";
	 	}finally{
	 		try{
	 			writer.close();
	 			// close가 될 때 파일에 저장되기 때문에 꼭 close 적어줘야 함!!!
	 		}catch(Exception e){
	 			e.printStackTrace();
	 		}
	 	}
	 	
	 	response.sendRedirect("writeFile_13.jsp?result=" + result);
	 	// success와 fail이 날라감
	 %>
</body>
</html>