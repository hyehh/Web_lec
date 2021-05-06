<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부</title>
</head>
<body>

<%! /* 이 부분이 선언부! 이런 int i나 string은 굳이 선언부에서 선언자 안쓰고 밑에서 선언해도 됨!*/
	int i = 10;
	String str = "I have a dream.";
%>
<%
	out.println("i = " + i + "<br>");
	out.println("str = " + str + "<br>");
	out.println("sum = " + sum(12, 15) + "<br>");
%>
<%
	int i = 10;
	String str = "I have a dream.";
	
	out.println("i = " + i + "<br>");
	out.println("str = " + str + "<br>");
	out.println("sum = " + sum(12, 15) + "<br>");
%>

</body>
</html>

<%! /* 메소드 선언할 때는 반드시 선언부에서 선언해야 함!!! 위치는 상관 없음! html에 밑에 있는 게 보편적임! */
	public int sum(int a, int b){
		return a + b;
	}
%>