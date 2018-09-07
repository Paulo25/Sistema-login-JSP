<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cadastro</title>
<script type="text/javascript" src="validarCampos.js"></script>
</head>
<body>

<h2>Cadastro de Usuário</h2>
<form action="CadastroLogin" method="post" name="form" >
	
		<table cellpadding="2">
			<tr>
				<td>Usuário:</td>
				<td><input type="text" name="txtUsuario" /></td>
			
				<td>Senha:</td>
				<td><input type="password" name="txtSenha" /></td>
				
				<td colspan="2" align="right"><input type="submit" value="Cadastrar" onclick="validarLogin();"/></td>
			</tr>
		</table>
	</form>
</body>
</html>