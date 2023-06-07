<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script type="text/javascript" src="resources/js/bootstrap.min"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Usuários</title>
<%@ include file="header1.jsp" %>
</head>
<body>

<%@ include file="menu1.jsp" %>
	<div class="container">
		<h1>Cadastrados</h1>
		<c:if test="${not empty msg }">
		<div class="alert alert-success">${msg}</div>
		</c:if>
		<c:if test="${not empty erro }">
			<div class="alert alert-danger">${erro}</div>
		</c:if>
		<table class="table table-striped">
			<tr>
				<th>Nome</th>
				<th>Sobrenome</th>
				<th>Email</th>
				<th>Cpf</th>
				<th>Senha</th>
				<th>Data de Nascimento</th>
				<th></th>
			</tr>
			 <c:forEach items= "${cadastro}" var="u">
				<tr>
					<td>${u.nome}</td>
					<td>${u.sobrenome}</td>
					<td>${u.ds_email}</td>
					<td>${u.cpf}</td>
					<td>${u.senha}</td>
					<td>
						<fmt:formatDate value="${u.dt_nasc.time }" pattern="dd/MM/yyyy"/>
					</td>
					<td>
						<c:url value="cadastro" var="link">
							<c:param name="acao" value="abrir-form-edicao"/>
							<c:param name="cd_pessoa" value="${u.cd_pessoa}"/>
						</c:url>
						<a href="${link}" class="btn btn-primary btn-xs">Editar</a>					
						<button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#excluirModal" onclick="cd_pessoaExcluir.value = ${u.cd_pessoa}">Excluir</button>
						
					</td>
				</tr>
			</c:forEach>
		</table>	
		
	</div>
<%@ include file="footer.jsp" %>	
			
<div class="modal fade" id="excluirModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmação</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        		Deseja realmente excluir o usuário?
      </div>
      <div class="modal-footer">
      	<form action="cadastro" method="post">
      		<input type="hidden" name="acao" value="excluir">
      		<input type="hidden" name="cd_pessoa" id="cd_pessoaExcluir">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
	        <button type="submit" class="btn btn-danger">Excluir</button>
        </form>
      </div>
    </div>
  </div>
</div>



	
</body>
</html>

