<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style type="text/css">
	h1{
		color: green;
	}
	#error{
		color: red;
		font-weight: bold;
		font-size: 10px;
	}
</style>
<script type="text/javascript" src="js/jquery-1.12.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var detail = "<c:out value='${param}'/>"
		console.log(detail);
		var errorMsg = "<c:out value='${param.login_error}'/>";
		if(errorMsg){
			$("#error").show();
		}
	});
	
</script>
</head>
<body>

<h1>Login with Username and Password.</h1>
<div id="error" style="display: none;">
	<p>Username and password doesn't match!</p>
</div>
<form action="j_spring_security_check" method="post">
	<table>
		<tr>
			<td>Username</td>
			<td><input type="text" name="j_username"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="j_password"></td>
		</tr>
		<tr>
			<td></td>
			<td>
				Remember Me
				<input type="checkbox" name="_spring_security_remember_me"/>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="reset" value="Clear">
				<input type="submit" value="Submit">
			</td>
			
		</tr>
	</table>
</form>

</body>
</html>