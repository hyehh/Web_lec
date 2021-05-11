<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 입력</title>
</head>
<script type="text/javascript">
function CheckForm(){ 
	var form = document.info;
	
	// Null Check
	if(form.userid.value == ""){
		alert("사용자 ID를 입력해 주세요!");
		form.userid.focus();
		return false;
	}
	if(form.name.value == ""){
		alert("이름을 입력해 주세요!");
		form.name.focus();
		return false;
	}
	if(form.tel.value == ""){
		alert("전화번호를 입력해 주세요!");
		form.tel.focus();
		return false;
	}
	if(form.address.value == ""){
		alert("주소를 입력해 주세요!");
		form.address.focus();
		return false;
	}
	
	// Detail Check
	var telCheck = /^[0-9]([-])+$/;
	var nameCheck = /^[가-힣]+$/;
	
	
	if(!nameCheck.test(form.name.value)){
		alert("이름은 한글로만 기입 가능합니다." + "\n" + "ㄱ, ㄴ, ㅏ, ㅓ 이런식으로 입력하신 경우 제대로 된 단어를 입력해주세요.");
		form.name.select();
		return false;	
	}
	if(!telCheck.test(form.tel.value)){
		alert("전화번호는 숫자로만 기입 가능합니다.");
		form.num1.select();
		return false;	
	}
	if(!nameCheck.test(form.address.value)){
		alert("주소는 한글로만 기입 가능합니다." + "\n" + "ㄱ, ㄴ, ㅏ, ㅓ 이런식으로 입력하신 경우 제대로 된 단어를 입력해주세요.");
		form.address.select();
		return false;	
	}

	form.submit();
	}

</script>
<body>
<h3>아래의 항목을 입력 후 확인 버튼을 누르세요!</h3>
<!-- 상관 없긴 하지만 form이 위에 있는 게 좋다! -->
 	<form name="info" action="purchaserInsert_02.jsp">
	<table>
		<tr>
			<td>사용자 ID : </td>
			<td><input type="text" name="userid"></td>
		</tr>
		<tr>
			<td>성명 : </td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>전화번호 : </td>
			<td><input type="text" name="telno"></td>
		</tr>
		<tr>
			<td>주소 : </td>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<td>&nbsp; </td>
			<td>&nbsp; </td>
		</tr>
		<tr>
			<td>&nbsp; </td>
			<td><input type="button" value="확인" onclick="CheckForm()"></td>
		</tr>
	</table> 
	</form>
	

</body>
</html>