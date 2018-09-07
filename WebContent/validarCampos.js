
request.setCharacterEncoding("UTF8");

function validarLogin(){
	if(document.form.txtUsuario.value==""){
		alert("Usuário não informado!");
		return false;
	}else if(document.form.txtSenha.value==""){
		alert("Senha não informada!");
		return false;
	}
	document.form.submit();
}