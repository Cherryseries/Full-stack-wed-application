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
		String name = request.getParameter("uname");
		String pass = request.getParameter("pwd");
		//System.out.println(name + "     "+pass);
		if(name.equals("sv") && pass.equals("123")) {
			RequestDispatcher rd = request.getRequestDispatcher("first.html");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			rd.forward(request, response);
		}
		%>
		<div>
			<a href = "index.html">back to homepage</a><br><br>		
			<a href = "first.html">back to editpage</a>
		</div>
	</div>
</body>
</html>