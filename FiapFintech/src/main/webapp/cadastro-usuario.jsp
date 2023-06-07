<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title class="titulo">Cadastro de Usuario</title>

<%@ include file="header1.jsp" %>
</head>
<body>
<%@ include file="menu1.jsp" %>
<div class="container">
	<h1>Cadastro de Usuario</h1>
	<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg}</div>
	</c:if>
	<c:if test="${not empty erro }">
		<div class="alert alert-danger">${erro}</div>
	</c:if>
	<form action="cadastro" method="post">
		<input type="hidden" value="cadastrar" name="acao">
		<div class="form-group">
			<label for="id-nome">Nome</label>
			<input type="text" name="nome" id="id-nome" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-sobrenome">Sobrenome</label>
			<input type="text" name="sobrenome" id="id-sobrenome" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-email">Email</label>
			<input type="text" name="email" id="id-email" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-cpf">Cpf</label>
			<input type="text" name="cpf" id="id-cpf" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-senha">Senha</label>
			<input type="password" name="password" id="password" class="form-control">
		</div>
		<div class="form-group">
			<label for="id-nascimento">Data de Nascimento</label>
			<input type="text" name="nascimento" id="id-nascimento" class="form-control">
		</div>
		<input type="submit" value="Salvar" class="btn btn-primary">
	</form>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>