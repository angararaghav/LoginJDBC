<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="css/loginstyle.css" rel="stylesheet" type="text/css" />

</head>
<body>

	<div class="login">
		<h1>Login to Web App</h1>
		<form action="Login">
			<p>
				<input type="text" name="username" value=""
					placeholder="Username or Email">
			</p>
			<p>
				<input type="password" name="pwd" value="" placeholder="Password">
			</p>
			<p class="remember_me">
				<label> <input type="checkbox" name="remember_me"
					id="remember_me"> Remember me on this computer
				</label>
			</p>
			<p class="submit">
				<input type="submit" name="commit" value="Login">
			</p>
		</form>
	</div>
	<div class="login-help">
		<p>
			Forgot your password? <a href="#">Click here to reset it</a>.
		</p>
	</div>
</body>
</html>