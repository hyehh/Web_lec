<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2의 거듭제곱</title>
</head>
<body>
	2 ^ 1 = <%=decmul(2, 1) %> <br>
	2 ^ 2 = <%=decmul(2, 2) %> <br>
	2 ^ 3 = <%=decmul(2, 3) %> <br>
	2 ^ 4 = <%=decmul(2, 4) %> <br>
	2 ^ 5 = <%=decmul(2, 5) %> <br>
</body>
</html>

<%!
	private int decmul(int a, int b){
	int result = 1;
	for(int i=1; i<=b; i++){
		result *= a;
	}
	return result;
}
%>