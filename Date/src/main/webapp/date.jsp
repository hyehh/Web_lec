<%@page import="java.util.GregorianCalendar"%>
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
	GregorianCalendar now = new GregorianCalendar();
	// Scanner 구성임! now는 변수이름 -> 메모리에는 now 만 들어감!
	// GregorianCalendar 가 현재날짜와 시간 알려주는 클래스임!
	// 이 부분은 조금 불편한 구조임 -> 이걸 스프링이 해결함
	
	String date = String.format("%TF", now);
	// %TF : yyyy-mm-dd 로 출력하는 것임!
	String time = String.format("%TT", now);
	// %TT : hh:mm:ss 로 출력하는 것임!
%>
	<%=now %>
	오늘의 날짜 : <%=date %> <br>
	현재 시간 : <%=time %> <br>
	<%=String.format("%TY년 %Tm월 %Td일", now, now, now) %> <br>
	<%=String.format("%TH시 %TM분 %TS초", now, now, now) %> <br>
</body>
</body>
</html>