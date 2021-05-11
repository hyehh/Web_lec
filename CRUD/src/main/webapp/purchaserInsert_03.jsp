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
	request.setCharacterEncoding("utf-8");
%>
<%--  	사용자 ID : <%=request.getParameter("id") %> <br>
 	성명 : <%=request.getParameter("name") %> <br>
 	전화번호 : <%=request.getParameter("telno") %> <br>
 	주소 : <%=request.getParameter("address") %> <br>
 	<br>
 	<%=request.getParameter("result") %> <br> --%>

<%--   	성명 : ${param.name } <br>
	전화번호 : ${param.telno } <br>
	주소 : ${param.address } <br>
	<br>
	${param.result } <br> --%>
	
 	사용자 ID : ${USERID } <br>
	성명 : ${NAME } <br>	
	전화번호 : ${TEL } <br>
	주소 : ${ADDRESS } <br> <br>
	${RESULT } <br> 
	<%session.invalidate(); %>
	
</body>
</html>