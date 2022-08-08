<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import = "java.sql.*"%>
<% 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","1234");
	
	Statement stmt = conn.createStatement();

	ResultSet rs = stmt.executeQuery("SELECT * FROM custom_01");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title></title>
</head>
<body>
	<h1>회원목록조회</h1>
	<hr>
	<table border ="1">
		<thead>
			<tr>
				<th>회워아이디</th>
				<th>회원이름</th>
				<th>이름</th>
				<th>연락처</th>
			</tr>
		</thead>
		<tbody>
			<% while(rs.next()){%>
			<tr>
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getString(5) %></td>
			</tr>
			<% } %>
		</tbody>
	</table>
	<hr>
	<h6>HRDKOREA Copyright&copy;2015 All rights reserved. Human Resource Development Service of Korea</h6>
</body>
</html>