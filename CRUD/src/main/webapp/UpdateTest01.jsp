<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Database 수정을 위한 테스트</title>
</head>
<body>
	<h3>Database 수정을 위한 테스트</h3>
	<!-- 사용자 id 입력하면 db에서 가져올 것 -->
	<form action="UpdateTest02.jsp" method="post">
		일련번호 : <input type="text" name="id" size="5"> 
		<input type="submit" value="OK">
	</form>
</body>
</html>