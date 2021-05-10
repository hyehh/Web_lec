<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 1부터 100까지 합계 구하기 (3에서 출력) -->
<%
	int sum = 0;
	for(int cnt = 1; cnt <=100; cnt++){
		sum += cnt;
	}
	request.setAttribute("RESULT", sum);
	
%>
	<jsp:forward page="sact_03.jsp" />
	<!-- / 적으면 뒷 부분 사라짐 -->
</body>
</html>