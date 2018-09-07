<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tela Login</title>
<script type="text/javascript" src="validarCampos.js"></script>

</head>


<body>

	<form action="Logar" method="post" name="form" >
		<p align="center">
		<table cellpadding="5">
			<tr>
				<td>Usuário:</td>
				<td><input type="text" name="txtUsuario" /></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="password" name="txtSenha" /></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="Logar" onClick="validarLogin()" /></td>
			</tr>
			
		</table>
		<a href="CadastrarLogin.jsp">registrar usuário?</a> 
		<p>
	</form>
	

</body>
</html>