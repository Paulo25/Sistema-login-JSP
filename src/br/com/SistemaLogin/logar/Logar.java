package br.com.SistemaLogin.logar;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;

import br.com.SistemaLogin.login.Login;

public class Logar {
	private static Connection con;

	public Logar(Connection con) { //Incializar a conexao
		Logar.con = con; //obejeto recebe variavel conexao
	}
	
public static void autenticar(Login l) throws SQLException, ServletException, IOException {
		
		String sql = "select * from login where usuario=? and senha=?";
		
		try{
		// cria um preparedStatement
		PreparedStatement stmt = con.prepareStatement(sql);

		////as linhas abaixo o conteudo das variaveis "txt" vai preencher o campo na tabela do banco 
		stmt.setString(1, l.getUsuario());
		stmt.setString(2, l.getSenha());
		

		// executa
		 ResultSet rs = stmt.executeQuery(); //atualiza a tabela tbusuarios com os dados do formulário
		 if(rs.next()){
			 System.out.println(rs.getString("txtUsuario"));
	            System.out.println(rs.getString("txtSenha"));
			 
		}else{
			System.out.println("Nenhum usuario!");
		}
		 rs.close();
		 stmt.close();
		}catch(SQLException e){
		e.printStackTrace();
		}finally{
			
		con.close();
	}
		
	}
	
	
	
	
}
