<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 결과</title>
</head>
<body>
<%
	request.getParameter("utf-8");
%>
	<h3>수정 결과</h3>
	<table>
		<tr>
			<td>사용자 ID : </td>
			<td><%=session.getAttribute("USERID") %></td>
		</tr>
		<tr>
			<td>성명 : </td>
			<td><%=session.getAttribute("NAME") %></td>
		</tr>
		<tr>
			<td>전화번호 : </td>
			<td><%=session.getAttribute("TEL") %></td>
		</tr>
		<tr>
			<td>주소 : </td>
			<td><%=session.getAttribute("ADDRESS") %></td>
		</tr>
		<tr>
			<td>&nbsp; </td>
			<td>&nbsp; </td>
		</tr>
	</table> <br>
	상기의 정보로 수정되었습니다. 감사합니다.
	 
</body>
</html>