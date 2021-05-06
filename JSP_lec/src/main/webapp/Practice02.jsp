<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sum of 1 to 100</title>
</head>
<body>
	<%
	int sum = 0;
	for(int i=1; i<=100; i++){
		if(i<100){
			out.println(i + " + ");
		}else{
			out.println(i + " = ");
		}
	}
	for(int i=1; i<=100; i++){
		sum += i;
	}
		out.println(sum);
	%>
	<br>
	<%
	int sum1 = 0;
	for(int i=1; i<=100; i++){
		sum1 += i;
	}
	out.println("1 + 2 + 3 + ..... + 99 + 100 = " + sum1);
	%>
</body>
</html>