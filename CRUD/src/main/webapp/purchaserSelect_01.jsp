<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객명단 리스트 검색</title>
</head>
<body>
	<h3>고객명단 리스트 검색</h3>
	<%
		String url_mysql = "jdbc:mysql://127.0.0.1/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		
		String whereStatement = "select userid, name, tel, address, insertdate from purchaserinfo";
		int cnt = 0;
	 	
		try{
			// 이 패키지에 있는 걸 쓸꺼야!
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 꼭 java.sql로 작성하기!
			Connection con_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			// 꼭 java.sql로 작성하기! (이거 insert할 때 안적어도 되긴하는데 선생님은 헷갈릴까봐 적음)
			Statement stmt_mysql = con_mysql.createStatement();
			
			// insert/ update/ delete만 ps 사용!
			// 값을 세팅한다(DB에서 이미 찾아놓음)
			ResultSet rs = stmt_mysql.executeQuery(whereStatement);
	%>
	
	<table border="1">
		<tr>
			<th>UserId</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>입력일자</th>
		</tr>
	
	<%
			
			while(rs.next()){
	%>
	
		<tr>
			<td><a href = "purchaserSelect_02.jsp?userid=<%=rs.getString(1) %>"><%=rs.getString(1) %></a></td>
			<!-- <하이퍼링크>화면에 보여지는 부분 --- 하이퍼링크는 키값으로 반드시 보여주기! 왜냐면 동명이인이 있을 수 있기 때문-->
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
	<%
			cnt++;
			}
	%>			
	</table>
	<%
			// 데이터 베이스와 연결 끊기
			con_mysql.close();		

			
		}catch(Exception e){
	
			e.printStackTrace();
	
		}
	%>
	<br><br>
	총 인원은 <%=cnt %>명 입니다.
	
</body>
</html>