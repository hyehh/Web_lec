<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 입력 값 계산</title>
</head>
<body>
	<%
	// String tf1, tf2, cb1, cb2;
	int a, b, c, d;
	
	// tf1 = request.getParameter("tf1");
	// tf2 = request.getParameter("tf2");
	// cb1 = request.getParameter("cb1");
	// cb2 = request.getParameter("cb2");
	a = Integer.parseInt(request.getParameter("tf1"));
	b = Integer.parseInt(request.getParameter("tf2"));
	c = Integer.parseInt(request.getParameter("cb1"));
	d = Integer.parseInt(request.getParameter("cb2"));
	%>
<%-- 	<%=a %> + <%=b %> = <%=add(a, b) %> <br>
	<%=c %> X <%=d %> = <%=multiple(c, d) %> <br> --%>
	<%=a %> + <%=b %> = <%=a+b %> <br>
	<%=c %> X <%=d %> = <%=c*d %>
</body>
</html>
<%-- <%!
	private int add(int i, int j){
	return i+j;
}
	private int multiple(int i, int j){
		return i*j;
	}
%> --%>