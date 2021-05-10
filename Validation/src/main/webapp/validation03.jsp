<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<script type="text/javascript">

	function CheckLogin(){ /* function을 메소드라고 생각하면 됨 */ 
		var form = document.loginForm;
		// Empty Check
		if(form.id.value == ""){
			alert("아이디를 입력해 주세요!");
			form.id.focus();
			return false;
			/* false 안주면 아무것도 없는 상태로 validation02_Process로 넘어가버림 */
		}else if(form.password.value == ""){
			alert("비밀번호를 입력해 주세요!");
			form.password.focus();
			return false;
			
		}
		
		//Length Check
		if(form.id.value.length < 4 || form.id.value.length >12){
			alert("아이디는 4~12자리 이내로 입력 가능 합니다.");
			form.id.focus();
			return false;
		}
		if(form.password.value.length < 4){
			alert("비밀번호는 4자리 이상으로 입력 해야 합니다.");
			form.password.select();
			return false;
		}
		form.submit();
		/* submit 두 군데 있으면 안됨! submit은 자바스크립트가 해주는 것임! */
}
</script>
<body>
	<form name="loginForm" action="validation03_Process.jsp" method="post">
		<!-- 이름도 필요하고 넘겨주는 action도 필요 -->
		<p>아이디 : <input type="text" name="id"> </p>
		<p>비밀번호 : <input type="password" name="password"> </p>
		<p><input type="button" value="전송" onclick="CheckLogin()"> </p>
	</form>
</body>
</html>