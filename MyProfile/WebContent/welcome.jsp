<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welocme</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
	response.setHeader("Pragma", "no-cache");//HTTP 1.0
	response.setHeader("Expires", "0");//Proxies

	if (session.getAttribute("username") == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	<div class="body">
		<h1>Welcome to landing page - ${username}</h1>
		<h2>
			<a href="vedios.jsp"> videos here</a>
		</h2>
		<form action="Logout">
			<input type="submit" value="logout" />
		</form>

	</div>
</body>
</html>