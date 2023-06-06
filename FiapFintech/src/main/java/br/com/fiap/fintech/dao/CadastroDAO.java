package br.com.fiap.fintech.dao;

import java.util.List;
import br.com.fiap.fintech.bean.Cadastro;
import br.com.fiap.fintech.exception.DBException;

public interface CadastroDAO {
	
	void cadastrar(Cadastro cadastro) throws DBException;
	void atualizar(Cadastro cadastro) throws DBException;
	void remover(int cd_pessoa) throws DBException;
	Cadastro buscar(int cd_pessoa);
	List<Cadastro> listar();
	
}