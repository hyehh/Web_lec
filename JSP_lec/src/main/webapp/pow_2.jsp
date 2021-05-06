<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2의 거듭제곱</title>
</head>
<body>
	<%
		out.println("2 ^ 1 = " + (int)Math.pow(2, 1) + "<br>");
		out.println("2 ^ 2 = " + (int)Math.pow(2, 2) + "<br>");
		out.println("2 ^ 3 = " + (int)Math.pow(2, 3) + "<br>");
		out.println("2 ^ 4 = " + (int)Math.pow(2, 4) + "<br>");
		out.println("2 ^ 5 = " + (int)Math.pow(2, 5) + "<br>");
	// 컴퓨터는 이렇게 for문 돌리면 더 빨라짐! 밑에처럼 다 하나씩 적어주면 좀 느림!
	 	for(int i=1; i<=5; i++){
	 		out.println("2 ^ " + i + " = " + power(2, i) + "<br>");
	 	}
	%>
	2 ^ 1 = <%=power(2, 1) %> <br>
	2 ^ 2 = <%=power(2, 2) %> <br>
	2 ^ 3 = <%=power(2, 3) %> <br>
	2 ^ 4 = <%=power(2, 4) %> <br>
	2 ^ 5 = <%=power(2, 5) %> <br>
	<%
		// 	지시자 import 되는 게 지시자
		int[] iArr = {10, 20, 30};
		out.print(Arrays.toString(iArr) + "<br>");
	%>
</body>
</html>

	<%!
		private int power(int a, int b){
		int result = 1;
		for(int i=0; i<b; i++){
	/* 	for(int i=1; i<=b; i++){  이거도 가능! */
			result *= a;
		}
		return result;
	}
	%>