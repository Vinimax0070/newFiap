<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="br.com.fiap.fintech.dao.impl.OracleCadastroDAO"%>
<%@page import="br.com.fiap.fintech.bean.Cadastro" %>
<%@page import="java.util.List" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="css/style.css">    
    <link rel="stylesheet" href="investimento.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">  
    <title>EcoPlus</title>
</head>
<body>
 	
    <div class="container">
        <div class="content first-content">
            <div class="first-column">
                <h2 class="title title-primary">Bem vindo ao EcoPlus!</h2>
                <p class="description description-primary">Para manter-se conectado conosco</p>
                <p class="description description-primary">Faça o login com suas credenciais de acesso</p>
                <button id="signin" class="btn btn-outline-light">Acessar</button>
            </div>    
            <div class="second-column">
                <h2 class="title title-second">Criar conta</h2>
                <div class="social-media">
                    <ul class="list-social-media">
                        <a class="link-social-mediali" href="https://facebook.com">
                            <li class="item-social-media">
                                <i class="fab fa-facebook-f"></i>        
                            </li>
                        </a>
                        <a class="link-social-media" href="https://accounts.google.com">
                            <li class="item-social-media">
                                <i class="fab fa-google-plus-g"></i>
                            </li>
                        </a>
                        <a class="link-social-mediali" href="https://www.linkedin.com/">
                            <li class="item-social-media">
                                <i class="fab fa-linkedin-in"></i>
                            </li>
                        </a>
                    </ul>
                </div>
                <p class="description description-second">ou use seu e-mail para se registrar:</p>
                <form class="form">                    
                    
                    <button onclick="window.location.href = 'cadastro-usuario.jsp'" type="button" class="btn btn-outline-danger">Cadastrar</button>        
                </form>
            </div>
        </div>
        <div class="content second-content">
            <div class="first-column">
                <h2 class="title title-primary">Olá, amigo!</h2>
                <p class="description description-primary">Insira suas credenciais</p>
                <p class="description description-primary">e comece a economiza com a EcoPlus!</p>
                <button id="signup" class="btn btn-outline-light">Cadastrar</button>
            </div>
                
            <div class="second-column">
                <h2 class="title title-second">Acessar sua conta</h2>
                <div class="social-media">
                    <ul class="list-social-media">
                        <a class="face link-social-mediali" href="https://facebook.com">
                            <li class="item-social-media">
                                <i class="fab fa-facebook-f"></i>
                            </li>
                        </a>
                        <a class="link-social-media" href="https://accounts.google.com">
                            <li class="item-social-media">
                                <i class="fab fa-google-plus-g"></i>
                            </li>
                        </a>
                        <a class="link-social-mediali" href="https://www.linkedin.com/">
                            <li class="item-social-media">
                                <i class="fab fa-linkedin-in"></i>
                            </li>
                        </a>
                    </ul>
                </div><!-- social media -->
                <p class="description description-second">ou use sua conta de e-mail:</p>
              
              
              	
                <form class="form" action="cadastro" method="post">
                  <input type="hidden" value="login" name="acao">
                    <div class="form-floating mb-3">
                        <input value="sada@adsa.com" type="email" class="form-control"
                        name="email" id="email" placeholder="name@example.com">
                        <label for="floatingInput">E-mail</label>
                    </div>
                    <div class="form-floating">
                        <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="Password">
                        <label for="floatingPassword">Senha</label>
                    </div>
                    <a class="password" href="#">Esqueceu sua senha?</a>
                   
                     <%
                     OracleCadastroDAO cadastroDAO = new OracleCadastroDAO();
                        		Cadastro listCadastro = cadastroDAO.listarCadastro(request.getParameter("email"));
                               
                                       String pass = request.getParameter("password");
                                       out.println(pass + " " + listCadastro.getSenha() + " " +request.getParameter("email"));
                                    if ((request.getParameter("email") !=null) && (request.getParameter("password") !=null)) {
                                        if (listCadastro.getSenha()== pass)
                                        	response.sendRedirect("dashboard.jsp");
                                        
                                else 
                                    out.println("Não é  possivel logar");
                                    }
                           %>
                           
                    <button onclick="window.location.href = 'dashboard.jsp'" type="button" class="btn btn-outline-danger">Acessar</button>
                </form>   
                            
            </div>            
        </div>        
    </div>
    <script src="js/index.js"></script>
</body>
</html>
