<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<script type="text/javascript">
/* 이게 자바스크립트 (body 위에 작성) - 페이지 하나로 작성 가능 (jsp는 2개필요)
	단, 자바스크립트는 소스가 다 보임
*/
	function CheckForm(){ /* function을 메소드라고 생각하면 됨 */ 
	alert("아이디 : " + document.loginForm.id.value + "\n" /* "\n"이 한 줄 띄기 의미 */
	+ "비밀번호 : " + document.loginForm.password.value);
}
</script>
<body>
	<form name="loginForm">
		<p>아이디 : <input type="text" name="id"> </p>
		<p>비밀번호 : <input type="password" name="password"> </p>
		<p><input type="submit" value="전송" onclick="CheckForm()"> </p>
	<!-- 넘기지 말고 누르면 checkform이라는 함수로 가라! -->
	</form>
</body>
</html>