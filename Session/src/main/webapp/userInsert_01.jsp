<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	개인 정보를 입력하세요.
	<br><br>
	<form action="userInsert_02.jsp" method="get">
		아이디 : <input type="text" name="id" size="20"> <br>
		패스워드 : <input type="password" name="pw" size="20"> <br>
		이름 : <input type="text" name="name" size="20"> <br>
		<br>
		<input type="submit" value="확인">
	</form>
</body>
</html>