
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
			String id = request.getParameter("eid");
		    String name = request.getParameter("ename");
		    String salary = request.getParameter("esalary");
		    
		    //conversion of string into int datatype
		    int eid = Integer.parseInt(id);
		    
		    //conversion of string into double datatype
		    double esalary = Double.parseDouble(salary);
		    
		    //create connection
		    jdbcCurd.createConnection();
		    
		    //call insertValues in jdbcCurd
		    jdbcCurd.insertValues(eid, name, esalary);
		    
		    //print the interted detials
		  //  out.println("inserted sucessfully"); 
		    
		%>
		<div>
			<a href = "index.html">back to homepage</a><br><br>
			<a href = "first.html">back to editpage</a>
		</div>
		
	</div>
	
</body>
</html>