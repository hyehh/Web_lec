<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="cart_02.jsp">
	수량 : <input type="text" name="number"> <br>
	크기 : 
	대<input type="radio" name="width" value="대" checked="checked">
	중<input type="radio" name="width" value="중">
	소<input type="radio" name="width" value="소"> <br>
	색상 : 
	<select name = "color">
		<option value="베이지">베이지</option>
		<option value="브라운">브라운</option>
		<option value="카키">카키</option>
	</select> <br>
	<input type="submit" value="저장">
	</form>
</body>
</html>