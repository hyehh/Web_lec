<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<script type="text/javascript">

	function Application(){ 
		var form = document.loginForm;
		// Empty Check
		if(form.id.value == ""){
			alert("아이디를 입력해 주세요!");
			form.id.focus();
			return false;
		}else if(form.pw.value == ""){
			alert("비밀번호를 입력해 주세요!");
			form.pw.focus();
			return false;
		}else if(form.name.value == ""){
			alert("이름을 입력해 주세요!");
			form.name.focus();
			return false;
		}else if(form.num2.value == ""){
			alert("전화번호 중간자리를 입력해 주세요!");
			form.num2.focus();
			return false;
		}else if(form.num3.value == ""){
			alert("전화번호 끝자리를 입력해 주세요!");
			form.num3.focus();
			return false;
		}else if(form.email.value == ""){
			alert("이메일을 입력해 주세요!");
			form.email.focus();
			return false;
		}
		
		// Length Check
		if(form.id.value.length < 4 || form.id.value.length >12){
			alert("아이디는 4~12자리 이내로 입력 가능 합니다.");
			form.id.focus();
			return false;
		}
		if(form.pw.value.length < 4){
			alert("비밀번호는 4자리 이상으로 입력 해야 합니다.");
			form.password.select();
			return false;
		}
		
		
 		// Detail Check
		var idCheck = /^[a-z]+$/;
		var pwCheck = /^[0-9]+$/;
		var nameCheck = /^[가-힣]+$/;
		var num1Check = /^[[0-9]+$/;
		var num2Check = /^[0-9]+$/;
		var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		
		if(!idCheck.test(form.id.value)){
			alert("아이디는 영어 소문자로만 기입 가능합니다.");
			form.id.select();
			return false;	
		}
		if(!pwCheck.test(form.pw.value)){
			alert("비밀번호는 숫자로만 기입 가능합니다.");
			form.pw.select();
			return false;	
		}
		if(!nameCheck.test(form.name.value)){
			alert("이름은 한글로만 기입 가능합니다." + "\n" + "ㄱ, ㄴ, ㅏ, ㅓ 이런식으로 입력하신 경우 제대로 된 단어를 입력해주세요.");
			form.name.select();
			return false;	
		}
		if(!num1Check.test(form.num1.value)){
			alert("전화번호는 숫자로만 기입 가능합니다.");
			form.num1.select();
			return false;	
		}
		if(!num2Check.test(form.num2.value)){
			alert("전화번호는 숫자로만 기입 가능합니다.");
			form.num2.select();
			return false;	
		}
		if(!emailCheck.test(form.email.value)){
			alert("이메일은 예시 형식으로만 기입 가능합니다." + "\n" + "(ex : 숫자/영어/_@숫자/영어/_.영어 2글자나 3글자)");
			form.email.select();
			return false;	
		}

		form.submit();
}
</script>
<body>
	<h2>회원 가입</h2>
	<form action="validation04_Process.jsp" name="loginForm" method="post">
		아이디 : <input type="text" name="id" size="20"> <br>
		비밀번호 : <input type="password" name="pw" size="20"> <br>
		이름 : <input type="text" name="name" size="20"> <br>
		연락처 : 
		<select name="num1">
			<option value = "010">010</option>
			<option value = "011">011</option>
			<option value = "017">017</option>
		</select> - 
		<input type="text" name="num2" size="7"> - 
		<input type="text" name="num3" size="7"> <br>
		이메일 : <input type="text" name="email"> <br>
		<input type="button" value="가입하기" onclick="Application()">
	</form>
</body>
</html>