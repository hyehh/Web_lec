<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- request.setAttribute랑 동일 -->
<!-- 	지금 하는게 form 태그 없이 전송하는 방법임! -->
	<c:set var = "CODE" value="1111" scope="request" />
	<c:set var = "PRODUCTNAME" value="온도습도" scope="request" />
	<c:set var = "PRICE" value="15,000" scope="request" />
	<jsp:forward page="jstl_03.jsp" />
</body>
</html>