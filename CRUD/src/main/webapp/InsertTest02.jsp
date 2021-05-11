<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%-- <%@page import="java.sql.*" %> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 절대 노출되면 안되는 페이지
사용자에게 보여주지 않아도 되는 페이지이기 때문에 jsp만 필요! html 필요 없음!-->
<%
	String userid = request.getParameter("userid");

	// --------- 데이터 베이스 입력
	// ? & - > 이거 get방식이다!
	String url_mysql = "jdbc:mysql://127.0.0.1/Practice?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	String result;
	
	// 꼭 java.sql로 작성하기!
	PreparedStatement ps = null;
	
	try{

			
		// 이 패키지에 있는 걸 쓸꺼야!
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 꼭 java.sql로 작성하기!
		Connection con_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
		// 꼭 java.sql로 작성하기! (이거 insert할 때 안적어도 되긴하는데 선생님은 헷갈릴까봐 적음)
		Statement stmt_mysql = con_mysql.createStatement();
		
		String A = "insert into wtest (userid";
		//(?) 나오면 반드시 ps쓴다! ps가 보안이 강력!
		String B = ") values (?)";
		
		ps = con_mysql.prepareStatement(A+B);
		ps.setString(1, userid);
		// insert를 업데이트 한다!
		ps.executeUpdate();
		
		// 데이터 베이스와 연결 끊기
		con_mysql.close();
		
		result = "C";
		
		
		
	}catch(Exception e){

		
		e.printStackTrace();
		result = "Inc";
		
		
	}
		response.sendRedirect("InsertTest03.jsp?result=" + result);
	// ---------
	
%>