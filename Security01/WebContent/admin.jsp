<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Security Page</title>
</head>
<body>

<h1>hello ${sessionScope.username}, this is my spring security ADMIN page.</h1>
<a href="<c:url value='/j_spring_security_logout'/>">Logout</a>
</body>
</html>