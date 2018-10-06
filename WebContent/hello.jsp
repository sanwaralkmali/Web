<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String name = request.getParameter("userName"); %>
	
	<h1> Hello <%=name.toUpperCase() + "in our Website" %> </h1>
</body>
</html>