<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  이거 쓰는 거 잊지 말기! 없으면 라이브러리 실행이 안됨! 태그에 c로 시작하는 건 jstl이야 선언하는 것! -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "num1" value = "7" />
<!-- num1 = 7 이야 라는 것 과 같은 이야기 var는 변수라는 이야기-->
<c:set var = "num2" value = "9" />
<c:set var = "result" value = "${num1*num2 }"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${num1 }과 ${num2 }의 곱은 ${result }입니다.
	
</body>
</html>