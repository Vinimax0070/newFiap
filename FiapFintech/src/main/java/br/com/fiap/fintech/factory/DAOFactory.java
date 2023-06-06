package br.com.fiap.fintech.factory;

import br.com.fiap.fintech.dao.CadastroDAO;
import br.com.fiap.fintech.dao.impl.OracleCadastroDAO;

public class DAOFactory {

	public static CadastroDAO getCadastroDAO() {
		return new OracleCadastroDAO();
	}
	
}