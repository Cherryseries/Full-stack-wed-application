<%@page import="java.sql.ResultSet"%>
<%@page import="com.JDBC.jdbcCurd"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
	<div class="center-div">
		<% 
		String eid = request.getParameter("id");
		String ename = request.getParameter("name");
		
		//Parse String object to int datatype
		int id = Integer.parseInt(eid);
		
		//call JDBC createConnection method
		jdbcCurd.createConnection();
						
		//call JDBC updateOneColumn method
		jdbcCurd.updateMethod(id, ename);
		%>
		<div>
			<a href = "index.html">back to homepage</a><br><br>
			<a href = "first.html">back to editpage</a>
		</div>
	</div>	
</body>
</html>