<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tela LOgado</title>
</head>
<body>

<% String usuario = (String) session.getAttribute("usuarioautenticado");
if(usuario == null){
	throw new ServletException("Nenhum usuario logado!");
}
%>

Seja Bem Vindo: <%=usuario%> | <a href="remover.jsp">Sair</a>


<h2>Logado com sucesso!!</h2>
</body>
</html>