
package br.com.fiap.fintech.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import br.com.fiap.fintech.bean.Cadastro;
import br.com.fiap.fintech.dao.CadastroDAO;
import br.com.fiap.fintech.exception.DBException;
import br.com.fiap.fintech.factory.DAOFactory;

@WebServlet("/cadastro")
public class CadastroServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private CadastroDAO dao;
	
	@Override
	public void init() throws ServletException {
		super.init();
		dao = DAOFactory.getCadastroDAO();
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String acao = request.getParameter("acao");
		
		switch (acao) {
		case "cadastrar":
			cadastrar(request, response);
			break;
		case "editar":
			editar(request,response);
			break;
		case "excluir":
			excluir(request,response);
			break;
		}
	}
	
	private void cadastrar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try{
			String nome = request.getParameter("nome");
			String sobrenome = request.getParameter("sobrenome");
			String ds_email = request.getParameter("email");
			String cpf = request.getParameter("cpf");
			String senha = request.getParameter("password");
			SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
			Calendar dt_nasc = Calendar.getInstance();
			dt_nasc.setTime(format.parse(request.getParameter("nascimento")));
			
			Cadastro cadastro = new Cadastro(0, nome, sobrenome, ds_email, cpf,senha,dt_nasc); 
			dao.cadastrar(cadastro);
			
			request.setAttribute("msg", "cadastro realizado!");
		}catch(DBException db) {
			db.printStackTrace();
			request.setAttribute("erro", "Erro ao cadastrar");
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("erro","Por favor, valide os dados");
		}
		request.getRequestDispatcher("cadastro-usuario.jsp").forward(request, response);
	}
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		
		switch (acao) {
		case "listar":
			listar(request, response);
			break;
		case "abrir-form-edicao":
			int cd_pessoa = Integer.parseInt(request.getParameter("cd_pessoa"));
			Cadastro cadastro = dao.buscar(cd_pessoa);
			request.setAttribute("cadastro", cadastro);
			request.getRequestDispatcher("edicao-cadastro.jsp").forward(request, response);
		}	
		
	}
	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Cadastro> lista = dao.listar();
		request.setAttribute("cadastro", lista);
		request.getRequestDispatcher("lista-usuario.jsp").forward(request, response);
	}
	private void editar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int cd_pessoa = Integer.parseInt(request.getParameter("cd_pessoa"));
			String nome = request.getParameter("nome");
			String sobrenome = request.getParameter("sobrenome");
			String ds_email = request.getParameter("ds_email");
			String cpf = request.getParameter("cpf");
			String senha = request.getParameter("password");
			SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
			Calendar dt_nasc = Calendar.getInstance();
			dt_nasc.setTime(format.parse(request.getParameter("dt_nasc")));
			
			Cadastro cadastro = new Cadastro(cd_pessoa,nome, sobrenome, ds_email, cpf,senha,dt_nasc); 
			dao.atualizar(cadastro);
			

			request.setAttribute("msg", "Usuário atualizado!");
		} catch (DBException db) {
			db.printStackTrace();
			request.setAttribute("erro", "Erro ao atualizar");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("erro", "Por favor, valide os dados " + e);
		}
		listar(request,response);
	}
	private void excluir(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int cd_pessoa = Integer.parseInt(request.getParameter("cd_pessoa"));
		try {
			dao.remover(cd_pessoa);
			request.setAttribute("msg", "Usuário removido!");
		} catch (DBException e) {
			e.printStackTrace();
			request.setAttribute("erro", "Erro ao atualizar");
		}
		listar(request,response);
	}
}
