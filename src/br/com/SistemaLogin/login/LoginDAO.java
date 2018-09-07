package br.com.SistemaLogin.login;


import java.sql.PreparedStatement;
import java.sql.SQLException;

import java.sql.Connection;

public class LoginDAO {

	// conectando
	private Connection con;

	public LoginDAO(Connection con) { //Incializar a conexao
		this.con = con; //obejeto recebe variavel conexao
	}
	 //Método para adcionar usuários
	public void adicionar(Login l) throws SQLException {
		
		String sql = "insert into login (usuario,senha) values (?,?)";
		
		try{
		// cria um preparedStatement
		PreparedStatement stmt = con.prepareStatement(sql);

		////as linhas abaixo o conteudo das variaveis "txt" vai preencher o campo na tabela do banco 
		stmt.setString(1, l.getUsuario());//modifica o campo da tabela(BD) com o conteudo preenchido no formularios
		stmt.setString(2, l.getSenha());
		

		// executa
		stmt.execute(); //atualiza a tabela tbusuarios com os dados do formulário
		stmt.close();
		}

		catch(SQLException e){
		e.printStackTrace();
		}finally{
		con.close();
	}
		}
	}
