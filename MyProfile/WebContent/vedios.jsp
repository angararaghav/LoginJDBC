<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vedios</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="body">

		<%
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.jsp");
		}
		%>
		This is video library.

		<iframe width="560" height="315"
			src="https://www.youtube.com/embed/P1wrGMIpaz0" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
	</div>
</body>
</html>