
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

	String id = request.getParameter("userid");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "music";
	String userid = "root";
	String password = "123456";


	try {
		Class.forName(driver);
	} 
	catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>HOME PAGE</title>
</head>
<body style="background-image: linear-gradient(to right, #000000 15%, #414141 85%);">
<div class="header">
         <div class="inner_header">
              <div class="logo container" ><img src="image\music.jpeg" width="350" height="350" style = "position:absolute; left:40px; top:100px; border: white;">
    		  <h5 style = "position:absolute; left:60px; top:20px; color: white;font-size: 25px;">WELLCOME TO  MUSIC STORE (PVT) Ltd.</h5>
    		  <h5 style = "position:absolute; left:800px; top:20px; color: white;font-size: 15px;">Contact Us | +94 11 000 000 | +94 77 767 7670 | support@music.com </h5>
              <!--navigation bar-->	
    <br><br><br>
                    <div class = "navigation">
                        <a href=homepage.jsp><ul>HOME</ul></a>
                        <a href=insertmusic.jsp><ul>ADD</ul></a>
                        <a href=deletemusic.jsp><ul>DELETE</ul></a>
                        <a href=updatemusic.jsp><ul>UPDATE </ul></a>
                        <a href=ReadData.jsp><ul>READ</ul></a>
                        </div>
     <br><br><br><br>

     
<table border="1" style = "margin-left: 500px;  margin-right: 50px; background-color: white; border-color: black; width: 65%; height:80%;" >
<tr>
	<td>MUSIC ID</td>
	<td>MUSIC NAME</td>
	<td>MUSIC TYPE</td>
	<td>MUSIC ARTIST</td>
</tr>

<%
	try{
		connection = DriverManager.getConnection(connectionUrl+database, userid, password);
		statement=connection.createStatement();
		String sql ="select * from song";
		resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
	<tr>
		<td><%=resultSet.getString("sid") %></td>
		<td><%=resultSet.getString("mname") %></td>
		<td><%=resultSet.getString("mtype") %></td>
		<td><%=resultSet.getString("martist") %></td>
	</tr>
<%
	}
		connection.close();
	} 
	catch (Exception e) {
		e.printStackTrace();
	}
%>
</table> 
     
     

</div>
</div>
</div>
     
</body>
</html>
