
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> 
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Cadastro de Usuário</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">FiapFintech</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
	
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link active"  href="cadastro-usuario.jsp">Cadastro</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cadastro?acao=listar">Usuarios</a>
        </li>
      </ul>
    
     <div class="w-25 p-3 input-group" style="background-color: #0000;">
	<span class="input-group-addon  "><i class="glyphicon glyphicon-search " style="color:black"></i></span>
	<input type="text" class="form-control" placeholder="Pesquisar"/>
	</div>
	</nav>

</body>
</html>