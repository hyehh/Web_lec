<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	for(int i=1; i<=9; i++){
		out.println(2 + " X " + i + " = " + (2*i) + "<br>=============<br>");
	}
	%>
	
	<%
	int i=1;
	while(i<=9){
		out.println(2 + " X " + i + " = " + (2*i));
		out.println("<br>=============<br>");
		i++;
	}
	%>
	
	<%
	int j=1;
	while(true){
		if(j<=9){
		out.println(2 + " X " + j + " = " + (2*j));
		out.println("<br>=============<br>");
		j++;
		
		}else{
			break;
		}
		
	}
	%>


</body>
</html>