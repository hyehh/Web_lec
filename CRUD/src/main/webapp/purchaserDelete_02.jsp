<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보 삭제</title>
</head>
<body>
	<h4>정말 삭제하실려면 확인 버튼을 누르세요!</h4>
	
	<%
	
		request.setCharacterEncoding("utf-8");
		
		String userid = request.getParameter("userid");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		String userInfoName = null;
		String userInfoTel = null;
		String userInfoAddress = null;
		boolean ch = false;
		
		String url_mysql = "jdbc:mysql://127.0.0.1/customer?serverTimezone=Asia/Seoul&characterEncoding=utf8&useSSL=false";
		String id_mysql = "root";
		String pw_mysql = "qwer1234";
		
		String whereStatement = "select name, tel, address from purchaserinfo where userid = '" + userid + "'";
		
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 꼭 java.sql로 작성하기!
			Connection con_mysql = DriverManager.getConnection(url_mysql, id_mysql, pw_mysql);
			// 꼭 java.sql로 작성하기! (이거 insert할 때 안적어도 되긴하는데 선생님은 헷갈릴까봐 적음)
			Statement stmt_mysql = con_mysql.createStatement();
			
			// insert/ update/ delete만 ps 사용!
			// 값을 세팅한다(DB에서 이미 찾아놓음)
			ResultSet rs = stmt_mysql.executeQuery(whereStatement);
			
			while(rs.next()){
				userInfoName = rs.getString(1);
				userInfoTel = rs.getString(2);
				userInfoAddress = rs.getString(3);
				ch = true;
				
			}
			
			con_mysql.close();
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
		if(!ch){
			response.sendRedirect("purchaserDelete_01.jsp");
		}
	%>
	
	 	<form action="purchaserDelete_03.jsp">
	<table>
		<tr>
			<td>사용자 ID : </td>
			<td><input type="text" name="userid" value="<%=userid %>" readonly="readonly"></td>
		</tr>
		<tr>
			<td>성명 : </td>
			<td><input type="text" name="name" value="<%=userInfoName %>" readonly="readonly"></td>
		</tr>
		<tr>
			<td>전화번호 : </td>
			<td><input type="text" name="tel" value="<%=userInfoTel %>" readonly="readonly"></td>
		</tr>
		<tr>
			<td>주소 : </td>
			<td><input type="text" name="address" value="<%=userInfoAddress %>" readonly="readonly"></td>
		</tr>
		<tr>
			<td>&nbsp; </td>
			<td>&nbsp; </td>
		</tr>
		<tr>
			<td>&nbsp; </td>
			<td><input type="submit" value="확인"></td>
		</tr>
	</table> 
	</form>
</body>
</html>