<%@ page import="java.sql.*" %>
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
		request.setCharacterEncoding("utf-8");
		
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		String url_mysql = "jdbc:mysql://127.0.0.1/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		
		PreparedStatement ps = null;
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			Statement stmt_mysql = con_mysql.createStatement();
			
			String A = "delete from purchaserinfo where userid = ?";
			
			ps = con_mysql.prepareStatement(A);

			ps.setString(1, userid);
			
			ps.executeUpdate();
			
			con_mysql.close();
			
			session.setAttribute("USERID", userid);

		}catch(Exception e){
			e.printStackTrace();
		}
		response.sendRedirect("purchaserDelete_04.jsp");
	%>
</body>
</html>