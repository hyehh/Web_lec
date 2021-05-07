<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>성격 테스트</h3>
	당신의 성격을 테스트 합니다. 데이터를 입력한 후 확인 버튼을 눌러주세요. <br>
	<form action="characterTest_01S" method="post">
	이름은? <input type="text" name="name"> <br>
	좋아하는 색은? 
	노랑<input type="radio" name="color" value="노랑">
	빨강<input type="radio" name="color" value="빨강" checked="checked">
	파랑<input type="radio" name="color" value="파랑"> <br>
	좋아하는 동물은?
	<select name="animal">
		<option value="거북이">거북이</option>
		<option value="사자">사자</option>
		<option value="호랑이">호랑이</option>$
		<option value="토끼">토끼</option>
	</select> <br>
	좋아하는 음식은? (모두 고르세요)
	짜장면<input type="checkbox" name="food" value="짜장면" checked="checked">
	짬뽕<input type="checkbox" name="food" value="짬뽕">
	탕수육<input type="checkbox" name="food" value="탕수육"> <br>
	<input type="submit" value="확인">
	
	
	
	</form>
	
</body>
</html>