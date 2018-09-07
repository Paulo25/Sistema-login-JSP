<%@ page isErrorPage="true"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Erro de login</title>
<style type="text/css">

#cabecalho{
background: #fff;
width: 800px;
height: 80px;
}
#corpo{
background: #fff;
width: 800px;
height: 450px;
}
#rodape{
background: #fff;
width: 800px;
height: 100px;
}
</style>

</head>
<body>
	<div align="center">
		<div id="cabecalho"></div>
		<div id="corpo">
			<img src="img/erro1.jpg" /> <br> 
			Error: <%=exception.getMessage()%><br> 
			Exceção ocorrida: <%=exception.getClass()%><br> <br> 
			<a href="login.jsp">Voltar para tela de login</a>
		</div>
		<div id="rodape"></div>
	</div>
</body>
</html>