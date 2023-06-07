<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>

    <link rel="stylesheet" href="css/styleDash.css">
    <title>Dashboard</title>
</head>

<body>
    <div class="container">
        <aside>
            <div class="top">
                <div class="logo">                    
                    <h2>ECO<span class="danger"> PLUS</span></h2>
                </div>
                <div class="close" id="close-btn">
                    <span class="material-symbols-outlined">close</span>
                </div>
            </div>

            <div class="sidebar">
                <a href="#" class="active">
                    <span class="material-symbols-outlined">space_dashboard</span>
                    <h3>Dashboard</h3>
                </a>

                <a href="#">
                    <span class="material-symbols-outlined">person</span>
                    <h3>Costomers</h3>
                </a>

                <a href="#">
                    <span class="material-symbols-outlined">settings</span>
                    <h3>Configuração</h3>
                </a>

                <a href="../index.html">
                    <span class="material-symbols-outlined">logout</span>
                    <h3>Sair</h3>
                </a>
            </div>
        </aside>
        <!-------------------- FINAL DA NAVBAR -------------->

        <main>
            <h1>Dashboard</h1>

            <div class="date">
                <input type="date">
            </div>

            <div class="insights">
                <div class="card investimentos">
                    <span class="material-symbols-outlined">trending_up</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total investido</h3>
                            <h1 class="incomes">R$ 0,00</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>100%</p>
                            </div>
                        </div>
                    </div>
                    <small class="text-muted">last 24 horas</small>
                </div>
                <!--------------- FINAL DE SALES ------------------>

                <div class="card despesas">
                    <span class="material-symbols-outlined">bar_chart</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total de despesas</h3>
                            <h1 class="expenses">R$ 0,00</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>72%</p>
                            </div>
                        </div>
                    </div>
                    <small class="text-muted">last 24 horas</small>
                </div>
                <!--------------- FINAL DE EXPENSE ------------------>

                <div class="card rendimento">
                    <span class="material-symbols-outlined">stacked_line_chart</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total da renda</h3>
                            <h1 class="total">$ 0,00</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>44%</p>
                            </div>
                        </div>
                    </div>
                    <small class="text-muted">last 24 horas</small>
                </div>
            </div>
            <!------------------- FINAL DAS TASK  ------------------>

            <div class="recent-orders">
                <h2>Historico de compras</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Nome do local</th>
                            <th>Valor</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Mercearia Esquina</td>
                            <td>R$ 60,00</td>
                            <td>Dépito</td>
                            <td class="warning">Aprovado</td>
                            <td class="primary">Detalhes</td>
                        </tr>
                        <tr>
                            <td>Mecanico Ford</td>
                            <td>R$ 655,00</td>
                            <td>Crédito</td>
                            <td class="warning">Aprovado</td>
                            <td class="primary">Detalhes</td>
                        </tr>
                        <tr>
                            <td>Supermercado Carrefour</td>
                            <td>R$ 1.355,95</td>
                            <td>Crédito</td>
                            <td class="warning">Aprovado</td>
                            <td class="primary">Detalhes</td>
                        </tr>
                        <tr>
                            <td>Vivo</td>
                            <td>R$ 145,90</td>
                            <td>Crédito</td>
                            <td class="warning">Pendente</td>
                            <td class="primary">Detalhes</td>
                        </tr>
                        <tr>
                            <td>Padaria Aguia de Ouro</td>
                            <td>R$ 65,72</td>
                            <td>Dépito</td>
                            <td class="warning">Aprovado</td>
                            <td class="primary">Detalhes</td>
                        </tr>
                    </tbody>
                </table>
                <a href="#">Show All</a>
            </div>
        </main>
        <!-------------------------- FINAL DA MAIN ------------------------->

        <div class="right">
            <div class="top">
                <button id="menu-btn">
                    <span class="material-symbols-outlined">menu</span>
                </button>                
                <div class="profile">
                    <div class="info">
                        <p> Olá, <b>Washington</b></p>
                    </div>
                    <div class="profile-foto">
                        <img src="user.png" alt="Foto do usuario">
                    </div>
                </div>
            </div>
            
            <!----------- FINAL DO TOP ------------>

            <div class="recent-updates">
                <h2>Recentes updates</h2>
                <div class="updates">
                    <div class="update">
                        <div class="profile-foto">
                            <span class="material-symbols-outlined">receipt_long</span>
                        </div>
                        <div class="message">
                            <p><b>Washington</b> Pagamento conta telefonica <b>R$ 182,50</b></p>
                            <small class="text-muted">10 Minutos atrás</small>
                        </div>
                    </div>
                    <div class="update">
                        <div class="profile-foto">
                            <span class="material-symbols-outlined">credit_card</span>
                        </div>
                        <div class="message">
                            <p><b>Washington</b> Compra cartão master final 5509 <b>R$ 837,05</b></p>
                            <small class="text-muted">28 Minutos atrás</small>
                        </div>
                    </div>
                    <div class="update">
                        <div class="profile-foto">
                            <span class="material-symbols-outlined">paid</span>
                        </div>
                        <div class="message">
                            <p><b>Washington</b> Recebimento via Pix <b>R$ 1.875,80</b></p>
                            <small class="text-muted">47 Minutos atrás</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </div>
    <script src="js/dashboard.js"></script>
</body>
</html>