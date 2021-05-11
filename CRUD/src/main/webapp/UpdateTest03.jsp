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

	String userid = request.getParameter("userid");

	// --------- 데이터 베이스 입력
	// ? & - > 이거 get방식이다!
	String url_mysql = "jdbc:mysql://127.0.0.1/Practice?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	// 꼭 java.sql로 작성하기!
	PreparedStatement ps = null;
	
	try{

			
		// 이 패키지에 있는 걸 쓸꺼야!
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 꼭 java.sql로 작성하기!
		Connection con_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = con_mysql.createStatement();
		
		String A = "update wtest set userid = ? where id = ?";
		//(?) 나오면 반드시 ps쓴다! ps가 보안이 강력!
		// 변경한 userid / 키 값 id 값
		
		
		ps = con_mysql.prepareStatement(A);
		ps.setString(1, userid);
		// session이 String이 아님 (안에는 String이지만, 포장지는 String이 아니기에!)
		ps.setString(2, (String)session.getAttribute("ID"));
		// insert를 업데이트 한다!
		ps.executeUpdate();
		
		// 데이터 베이스와 연결 끊기
		con_mysql.close();
		
		session.setAttribute("NEW", userid);
	}catch(Exception e){
		e.printStackTrace();
		
	}
		response.sendRedirect("UpdateTest04.jsp");
	// ---------
	%>
</body>
</html>