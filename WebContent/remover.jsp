<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>removeSess�o</title>
</head>
<body>
	<%
		session.removeAttribute("usuarioautenticado"); //quebra sess�o do usuario
		response.sendRedirect("login.jsp"); //redireciona para tela login
	%>
</body>
</html>