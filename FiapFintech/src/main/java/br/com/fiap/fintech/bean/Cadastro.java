package br.com.fiap.fintech.bean;

import java.util.Calendar;

public class Cadastro {
	
	private int cd_pessoa;
	private String nome;
	private String sobrenome;
	private String ds_email;
	private String cpf;
	private String senha;
	private Calendar dt_nasc;
	
	public Cadastro() {
		super();
	}

	public Cadastro(int cd_pessoa,String nome, String sobrenome, String ds_email, String cpf, String senha, Calendar dt_nasc) {
		super();
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.ds_email = ds_email;
		this.cpf = cpf;
		this.senha = senha;
		this.cd_pessoa = cd_pessoa;
		this.dt_nasc = dt_nasc;
	}
	public Cadastro(String nome, String sobrenome, String ds_email, String cpf, String senha,Calendar dt_nasc) {
		super();
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.ds_email = ds_email;
		this.cpf = cpf;
		this.senha = senha;
		this.dt_nasc= dt_nasc;
		
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getDs_email() {
		return ds_email;
	}

	public void setDs_email(String ds_email) {
		this.ds_email = ds_email;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Calendar getDt_nasc() {
		return dt_nasc;
	}

	public void setDt_nasc(Calendar dt_nasc) {
		this.dt_nasc = dt_nasc;
	}

	public int getCd_pessoa() {
		return cd_pessoa;
	}

	public void setCd_pessoa(int cd_pessoa) {
		this.cd_pessoa = cd_pessoa;
	}
	
	
	
	
}
