package br.com.SistemaLogin.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.SistemaLogin.logar.Logar;

/**
 * Servlet implementation class LogarServlet
 */
@WebServlet("/Logar")
public class LogarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpServletRequest req;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			processRequest(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void processRequest(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
		 // joga usuario e senha nas strings
        String usuario = req.getParameter("txtUsuario");
        String senha = req.getParameter("txtSenha");
        // instancia o objeto login que vai ser usado na DAO
        Login login = new Login();
        login.setUsuario(usuario);
        login.setSenha(senha);
 
        Logar.autenticar(login);
        if(usuario.equals(login.getUsuario()) || senha.equals(login.getSenha())){
        	RequestDispatcher pagina = req.getRequestDispatcher("logado.jsp");
        	pagina.forward(req, resp);
        }
		
	}


}
