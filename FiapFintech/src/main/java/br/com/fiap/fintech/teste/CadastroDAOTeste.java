package br.com.fiap.fintech.teste;


import java.util.Calendar;
import java.util.List;

import br.com.fiap.fintech.bean.Cadastro;
import br.com.fiap.fintech.dao.CadastroDAO;
import br.com.fiap.fintech.exception.DBException;
import br.com.fiap.fintech.factory.DAOFactory;

public class CadastroDAOTeste {

	public static void main(String[] args) {
		CadastroDAO dao = DAOFactory.getCadastroDAO();
		
		//Cadastrar um produto
		Cadastro cadastro = new Cadastro(0,"TESTE2","NIVC3","dasdadadsai@gmail.com","435335","ADSDASDd",Calendar.getInstance());
		try {
			dao.cadastrar(cadastro);
			System.out.println("Usuario cadastrado.");
		} catch (DBException e) {
			e.printStackTrace();
		}

		//Buscar um produto pelo código e atualizar
		cadastro = dao.buscar(1);
		cadastro.setNome("vinic");
		
		try {
			dao.atualizar(cadastro);
			System.out.println("Usuario atualizado.");
		} catch (DBException e) {
			e.printStackTrace();
		}
		
		//Listar os produtos
		List<Cadastro> lista = dao.listar();
		for (Cadastro item : lista) {
			System.out.println(item.getNome()+""+ item.getSobrenome()+""+item.getDs_email()+"");
		}
		
		//Remover um produto
		try {
			dao.remover(2);
			System.out.println("removido");
		}catch (DBException e) {
			e.printStackTrace();
		}
	}
}