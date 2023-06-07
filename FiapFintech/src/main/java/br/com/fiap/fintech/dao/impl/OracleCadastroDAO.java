package br.com.fiap.fintech.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.List;
import java.util.ArrayList;
import br.com.fiap.fintech.bean.Cadastro;
import br.com.fiap.fintech.dao.CadastroDAO;
import br.com.fiap.fintech.exception.DBException;
import br.com.fiap.fintech.singleton.ConnectionManager;

public class OracleCadastroDAO implements CadastroDAO {

	private Connection conexao;
	
	@Override
	public void cadastrar(Cadastro cadastro) throws DBException {
		PreparedStatement stmt = null;

		try {
			conexao = ConnectionManager.getInstance().getConnection();
			String sql = "INSERT INTO T_PESSOA (CD_PESSOA,NOME, SOBRENOME, DS_EMAIL, CPF, SENHA,DT_NASC) VALUES (SQ_T_PESSOA.NEXTVAL,?, ?, ?, ?, ?, ?)";
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, cadastro.getNome());
			stmt.setString(2, cadastro.getSobrenome());
			stmt.setString(3, cadastro.getDs_email());
			stmt.setString(4, cadastro.getCpf());
			stmt.setString(5, cadastro.getSenha());
			java.sql.Date data = new java.sql.Date(cadastro.getDt_nasc().getTimeInMillis());
			stmt.setDate(6, data);

			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DBException("Erro ao cadastradar.");
		} finally {
			try {
				stmt.close();
				conexao.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void atualizar(Cadastro cadastro) throws DBException {
		PreparedStatement stmt = null;

		try {
			conexao = ConnectionManager.getInstance().getConnection();
			String sql = "UPDATE T_PESSOA SET NOME = ?, SOBRENOME = ?, DS_EMAIL = ?, CPF = ?, SENHA = ?, DT_NASC= ? WHERE CD_PESSOA = ?";
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, cadastro.getNome());
			stmt.setString(2, cadastro.getSobrenome());
			stmt.setString(3, cadastro.getDs_email());
			stmt.setString(4, cadastro.getCpf());
			stmt.setString(5, cadastro.getNome());
			java.sql.Date data = new java.sql.Date(cadastro.getDt_nasc().getTimeInMillis());
			stmt.setDate(6, data);
			stmt.setInt(7, cadastro.getCd_pessoa());

			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new DBException("Erro ao atualizar.");
		} finally {
			try {
				stmt.close();
				conexao.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public void remover(int cd_pessoa) throws DBException {
			PreparedStatement stmt = null;

			try {
				conexao = ConnectionManager.getInstance().getConnection();
				String sql = "DELETE FROM T_PESSOA WHERE CD_PESSOA = ?";
				stmt = conexao.prepareStatement(sql);
				stmt.setInt(1, cd_pessoa);
				stmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				throw new DBException("Erro ao remover.");
			} finally {
				try {
					stmt.close();
					conexao.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		}
	@Override
	public Cadastro buscar(int id) {
		Cadastro cadastro = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			conexao = ConnectionManager.getInstance().getConnection();
			stmt = conexao.prepareStatement("SELECT * FROM T_PESSOA WHERE CD_PESSOA = ?");
			stmt.setInt(1, id);
			rs = stmt.executeQuery();

			if (rs.next()){
				int cd_pessoa= rs.getInt("CD_PESSOA");
				String nome = rs.getString("NOME");
				String sobrenome = rs.getString("SOBRENOME");
				String ds_email = rs.getString("DS_EMAIL");
				String cpf = rs.getString("CPF");
				String senha = rs.getString("SENHA");
				java.sql.Date data = rs.getDate("DT_NASC");
				Calendar dt_nasc = Calendar.getInstance();
				dt_nasc.setTimeInMillis(data.getTime());
				
				cadastro = new Cadastro(cd_pessoa, nome, sobrenome, ds_email, cpf,senha,dt_nasc);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				stmt.close();
				rs.close();
				conexao.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cadastro;
	}
	@Override
	public List<Cadastro> listar() {
		List<Cadastro> lista = new ArrayList<Cadastro>();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			conexao = ConnectionManager.getInstance().getConnection();
			stmt = conexao.prepareStatement("SELECT * FROM T_PESSOA");
			rs = stmt.executeQuery();

			//Percorre todos os registros encontrados
			while (rs.next()) {
				int cd_pessoa= rs.getInt("CD_PESSOA");
				String nome = rs.getString("NOME");
				String sobrenome = rs.getString("SOBRENOME");
				String ds_email = rs.getString("DS_EMAIL");
				String cpf = rs.getString("CPF");
				String senha = rs.getString("SENHA");
				java.sql.Date data = rs.getDate("DT_NASC");
				Calendar dt_nasc = Calendar.getInstance();
				dt_nasc.setTimeInMillis(data.getTime());
				
				Cadastro cadastro = new Cadastro(cd_pessoa, nome, sobrenome, ds_email, cpf,senha,dt_nasc);
				lista.add(cadastro);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				stmt.close();
				rs.close();
				conexao.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return lista;
	}
	public Cadastro listarCadastro(String email) {
		List<Cadastro> lista = new ArrayList<Cadastro>();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Cadastro cadastro = new Cadastro();
		try {
			conexao = ConnectionManager.getInstance().getConnection();
			stmt = conexao.prepareStatement("SELECT * FROM T_PESSOA WHERE DS_EMAIL = " + email);
			rs = stmt.executeQuery();
			
			//Percorre todos os registros encontrados
			while (rs.next()) {
				int cd_pessoa= rs.getInt("CD_PESSOA");
				String nome = rs.getString("NOME");
				String sobrenome = rs.getString("SOBRENOME");
				String ds_email = rs.getString("DS_EMAIL");
				String cpf = rs.getString("CPF");
				String senha = rs.getString("SENHA");
				java.sql.Date data = rs.getDate("DT_NASC");
				Calendar dt_nasc = Calendar.getInstance();
				dt_nasc.setTimeInMillis(data.getTime());
				
				cadastro = new Cadastro(cd_pessoa, nome, sobrenome, ds_email, cpf,senha,dt_nasc);
				lista.add(cadastro);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				stmt.close();
				rs.close();
				conexao.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return cadastro;
	}
}

