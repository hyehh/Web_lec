<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
</head>
<body>
<!-- 여긴 sql에 있는 DAO DTO(Bean) 모두 쓰임! (select) command가 먼저 있어야 함! -->
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
		<c:forEach items="${list }" var="dto">
		<!-- 		request.setAttribute("list", dtos); 여기서 정의해준 list임!-->			
		<tr>
			<td>${dto.bId }</td>
			<td>${dto.bName }</td>
			<td>${dto.bTitle }</td>
			<td>${dto.bDate }</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>
