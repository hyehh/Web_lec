<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객명단 수정 및 삭제</title>
</head>
<body>
	<h4>고객명단 수정 및 삭제</h4>
	<%
		request.setCharacterEncoding("utf-8");
	
		String userid = request.getParameter("userid");
		String url_mysql = "jdbc:mysql://127.0.0.1/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		String name = "";
		String tel = "";
		String address = "";
		
		String whereStatement = "select name, tel, address from purchaserinfo where userid = '" + userid + "'";
	 	
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 꼭 java.sql로 작성하기!
			Connection con_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			// 꼭 java.sql로 작성하기!
			Statement stmt_mysql = con_mysql.createStatement();
			
			// insert/ update/ delete만 ps 사용!
			// 값을 세팅한다(DB에서 이미 찾아놓음)
			ResultSet rs = stmt_mysql.executeQuery(whereStatement);
			
			while(rs.next()){
				// userid 가져오는 것임
				name = rs.getString(1);
				tel = rs.getString(1);
				address = rs.getString(1);
			}

			
			// 데이터 베이스와 연결 끊기
			con_mysql.close();		

			session.setAttribute("USERID", userid);
		}catch(Exception e){

			e.printStackTrace();

		}
	%>
	
	<form action="purchaserSelect_03.jsp" method="post">
		User ID : <input type="text" name="userid" size="10" value="<%=userid %>" readonly="readonly"> <br>
		성명 : <input type="text" name="name" size="10" value="<%=name %>"> <br>
		전화번호 : <input type="text" name="tel" size="20" value="<%=tel %>"> <br>
		주소 : <input type="text" name="address" size="60" value="<%=address %>"> <br>
		<input type="submit" value="수정">
	</form>
	<form action="purchaserSelect_04.jsp" method="get">
		<input type="submit" value="삭제">
	</form>
</body>
</html>