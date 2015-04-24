package br.com.alura.gerenciador.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.Usuario;
import br.com.alura.gerenciador.dao.UsuarioDAO;

public class Login implements Tarefa{

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		String email = req.getParameter("email");
		String senha = req.getParameter("senha");

		Usuario usuario = new UsuarioDAO().buscaPorEmailESenha(email, senha);
		if (usuario == null){
			return "/WEB-INF/paginas/loginInvalido.html";
		}else{
			req.getSession().setAttribute("usuarioLogado", usuario);
			return "/WEB-INF/paginas/usuarioLogado.jsp";
		}

	}
}
