<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보 수정</title>
</head>
<body>
	<h4>아이디를 수정한 후 확인 버튼을 누르세요</h4>
	
	<%
	String id = request.getParameter("id");
	String strUserid = null;
	// 가져 온 걸 집어 넣으려는 용도

	// --------- 데이터 베이스 입력
	// ? & - > 이거 get방식이다!
	String url_mysql = "jdbc:mysql://127.0.0.1/Practice?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
	String id_mysql = "root";
	String pw_mysql = "qwer1234";
	
	String whereStatement = "select userid from wtest where id = " + id;
 	
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
		
		while(rs.next()){
			// userid 가져오는 것임
			strUserid = rs.getString(1);
		}

		
		// 데이터 베이스와 연결 끊기
		con_mysql.close();		
		
		// 아이디를 못찾을 경우 session에 넣을 필요 없기 때문에 close하고 쓰기 <자바의 bean 같은 존재>
		session.setAttribute("ID", id);
		session.setAttribute("OLD", strUserid);
		
	}catch(Exception e){

		e.printStackTrace();

	}
	%>
	<form action="UpdateTest03.jsp" method="post">
		사용자 ID : <input type="text" name="userid" size="10" value="<%=strUserid %>"> 
		<input type="submit" value="확인">
	</form>
</body>
</html>