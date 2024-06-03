<%-- 
    Document   : painelAdmin
    Created on : 01/06/2024, 21:58:16
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="apple-touch-icon" sizes="180x180" href="assets/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="assets/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="assets/favicon-16x16.png">
        <link rel="manifest" href="assets/site.webmanifest">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/painel.css">
        <title>PainelADM * MSSRM</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
    <main>
        <div class="container">
            <div id="painel-titulo-img">
                <h1>PAINEL ADMINISTRATIVO</h1>
                <img src="assets/painelimg.svg" alt="painel-adm">
            </div>
            <div id="botoes"> <!--div para agrupar os botao-->
                <button class="btn-redireciona" id="btn-cadastro-adm"><a href="#">CADASTRAR ADM</a></button>
                <button class="btn-redireciona"><a href="./cadastrar-produto">CADASTRAR</a></button>
                <button class="btn-redireciona"><a href="#">EDITAR</a></button>
                <button class="btn-redireciona"><a href="#">EXCLUIR</a></button>
            </div>
        </div>
    </main>
    </body>
</html>
