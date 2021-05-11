<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제 결과</title>
</head>
<body>
<%
	request.getParameter("utf-8");
%>
	<h3>삭제 결과</h3>
		<table>
		<tr>
			<td>사용자 ID : </td>
			<td><%=session.getAttribute("USERID") %></td>
		</tr>
		</table> <br> <br>
		
		상기의 정보가 삭제 되었습니다. 감사합니다.
</body>
</html>