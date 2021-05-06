<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1부터 200까지의 합</title>
</head>
<body>
	<%
	int sum1 = 0;
	for(int i=1; i<=100; i++){
		sum1 += i;
	}
	out.println("1부터 100까지의 합 = " + sum1 + "<br>");
	int sum2 = 0;
	for(int i=1; i<=200; i++){
		sum2 += i;
	}
	out.println("1부터 200까지의 합 = " + sum2);
	%>
	<br>
	<%
	int sum3 = 0;
	int sum4 = 0;
	for(int i=1; i<=200; i++){
		if(i<=100){
			sum3 += i;
		}
		sum4 += i;
	}
	out.println("1부터 100까지의 합 = " + sum3 + "<br>" + "1부터 200까지의 합 = " + sum4);
	%>
	<br>
	<!-- 이게 제일 좋은 방법! if 많이 쓰는 것 별로 안좋음! 차라리 for 문을 많이 쓰자! (for문 3번 돌리는 게 if 한 번 돌리는 것보다 빠름!) -->
	<%
	int finalsum = 0;
	for(int i=1; i<=100; i++){
		finalsum += i;
	}
	out.println("1부터 100까지의 합 = " + finalsum + "<br>");
	for(int i=101; i<=200; i++){
		finalsum += i;
	}
	out.println("1부터 200까지의 합 = " + finalsum + "<br>");
	
	%>
	<%
	int sumfinal = 0;
	for(int i=1; i<=100; i++){
		sumfinal += i;
	}
	%>
	1부터 100까지의 합 = <%=sumfinal %> <br>
	<%
	for(int i=101; i<=200; i++){
		sumfinal += i;
	}
	%>
	1부터 200까지의 합 = <%=sumfinal %> <br>
	
</body>
</html>