<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Login Page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="resources/screen1/styles/admin_login_style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body onload='document.loginForm.username.focus();'>
<%--<jsp:include page="menu.jsp"/>--%>


	<div id="login-box">




		<form name='loginForm' method='POST' class="login"  action="sampleController.htm?action=adminlogin">

			<center><p>ADMIN LOGIN</p></center>
			<hr>
			<ul>
				<li>

					<input type='text' name='username' value='' placeholder="Username">

				</li>
				<li>

					<input type='password' name='password' placeholder="Password"/>

				</li>

				<li>
					<input name="submit" type="submit" value="LOGIN" onClick="window.location.href='sampleController.htm?action=dashboard'" />
				</li>

			</ul>


		</form>
	</div>

</body>
</html>