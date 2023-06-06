<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Atualização de Produto</title>
<%@ include file="header1.jsp" %>
</head>
<body>
<%@ include file="menu1.jsp" %>
<div class="container">
	<h1>Edição de Usuário</h1>
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg}</div>
		</c:if>
		<c:if test="${not empty erro }">
			<div class="alert alert-danger">${erro}</div>
		</c:if>
	<form action="cadastro" method="post">
		<input type="hidden" value="editar" name="acao">
		<input type="hidden" value="${cadastro.cd_pessoa}" name="cd_pessoa">
		<div class="form-group">
			<label for="id-nome">Nome</label>
			<input type="text" name="nome" id="id-nome" class="form-control" value="${cadastro.nome}" >
		</div>
		<div class="form-group">
			<label for="id-sobrenome">Sobrenome</label>
			<input type="text" name="sobrenome" id="id-sobrenome" class="form-control" value="${cadastro.sobrenome}" >
		</div>
		<div class="form-group">
			<label for="id-ds_email">Email</label>
			<input type="text" name="ds_email" id="id-ds_email" class="form-control" value="${cadastro.ds_email}" >
		</div>
		<div class="form-group">
			<label for="id-cpf">Cpf</label>
			<input type="text" name="cpf" id="id-cpf" class="form-control" value="${cadastro.cpf}" >
		</div>
		<div class="form-group">
			<label for="id-password">Senha</label>
			<input type="text" name="password" id="id-password" class="form-control" value="${cadastro.senha}" >
		</div>
		<div class="form-group">
			<label for="id-dt_nasc">Data de Nascimento</label>
			<input type="text" name="dt_nasc" id="id-dt_nasc" class="form-control" 
				value='<fmt:formatDate value="${cadastro.dt_nasc.time }" pattern="dd/MM/yyyy"/>'>
		</div>
		<input type="submit" value="Salvar" class="btn btn-primary">
		<a href="cadastro?acao=listar" class="btn btn-danger">Cancelar</a>
	</form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>