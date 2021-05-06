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
		int age = Integer.parseInt(request.getParameter("age"));
		if(age>=19){
			response.sendRedirect("ResponseAge_03.jsp?age=" + age);
/* 			response.sendRedirect("http://localhost:8080/JSP_02/ResponseAge_03.jsp?age=" + age); */
// 첫 번째 age는 01에서의 name="age"이고 두 번째 age는 int age임!
		}else{
			response.sendRedirect("ResponseAge_04.jsp?age=" + age);
/* 			response.sendRedirect("http://localhost:8080/JSP_02/ResponseAge_04.jsp?age=" + age); */
		}
	%>  
</body>
</html>