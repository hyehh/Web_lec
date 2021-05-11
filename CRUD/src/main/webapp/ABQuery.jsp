<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 명단 리스트</title>
</head>
<body>
	<h3>주소록 명단 리스트</h3>	
	<form action="ABQuery.jsp" method="post">
	검색 선택 : 
		<select name="search">
			<option value = "where name">이름</option>
			<option value = "where tel">전화번호</option>
			<option value = "where address" selected="selected">주소</option>
			<option value = "where relation">관계</option>
		</select>
		<input type="text" name="searchText"> 
		<input type="submit" value="검색">
	</form>
	<%
		String url_mysql = "jdbc:mysql://127.0.0.1/useraddress?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		
		String where = "";
		String searchText = "";
		
		if(request.getParameter("searchText")==null){
			where = "address";
			searchText = "";
		}else{
			where = request.getParameter("search");
			searchText = " like '%" + request.getParameter("searchText") + "%'";
		}
		
		String whereStatement = "select seqno, name, telno, address, email, relation from userinfo " + where + searchText;
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
	<hr>
	<table border="1">
		<tr>
			<th>Seq</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>전자우편</th>
			<th>관계</th>
		</tr>
	
	<%
			
			while(rs.next()){
	%>
	
		<tr>
			<td><a href = "ABContent.jsp?userid=<%=rs.getString(1) %>"><%=rs.getString(1) %></a></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
	<%
			cnt++;
			}
	
	%>			
	</table>
	<%
			con_mysql.close();		
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	<br>
	<form action="ABInsert.jsp" method="post">
		<input type="submit" value="입력">
	</form>
	<hr>
	<br><br>
	총 인원은 <%=cnt %>명 입니다.
	
</body>
</html>