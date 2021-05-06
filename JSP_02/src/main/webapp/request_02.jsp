<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반갑습니다.</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	// get방식은 괜찮으나 post의 경우 이거 있어야 한글이 안깨짐! 꼭 써주자!!!!!
%>
	안녕하세요. <%=request.getParameter("yourname") %>님!
	<!-- yourname에 ""적어줘야 해석해준다! -->
</body>
</html>