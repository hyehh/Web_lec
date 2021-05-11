<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
	String result;
	
	
	PreparedStatement ps = null;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		Statement stmt_mysql = con_mysql.createStatement();

		String A = "insert into purchaserinfo (userid, name, tel, address, insertdate) ";
		String B = "values (?,?,?,?,now())";
		
		ps = con_mysql.prepareStatement(A+B);
		ps.setString(1, userid);
		ps.setString(2, name);
		ps.setString(3, tel);
		ps.setString(4, address);
		// insert를 업데이트 한다!
		ps.executeUpdate();
		
		con_mysql.close();
		
		// try에서만 작동해도 되기 때문!
		session.setAttribute("USERID", userid);
		session.setAttribute("NAME", name);
		session.setAttribute("TEL", tel);
		session.setAttribute("ADDRESS", address);

		
		result = "상기의 정보로 입력되었습니다. 감사합니다.";
	}catch(Exception e){
		e.printStackTrace();
		session.setAttribute("USERID", "오류");
		session.setAttribute("NAME", "오류");
		session.setAttribute("TEL", "오류");
		session.setAttribute("ADDRESS", "오류");
		result = "정보 입력 중 오류가 발생했습니다!" + "\n" + "다시 입력해주세요!";
	}
	
	// result 는 session 에 저장하지 않아도 된다! (사용자 입력 값이 아니기 때문)
	session.setAttribute("RESULT", result);
 	
	
	response.sendRedirect("purchaserInsert_03.jsp");
	
//	response.sendRedirect("purchaserInsert_03.jsp?id=" + id + "&name="  + name + "&telno=" + telno + "&address=" + address + "&result=" +result);
	%>



</body>
</html>