<%-- 
    Document   : header
    Created on : 04/05/2024, 11:22:34
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/header.css">
        <script src="https://kit.fontawesome.com/72aebe393c.js" crossorigin="anonymous"></script>
        <title>Header</title>
    </head>
    <body>
        <header class="header">
                <div class="up">
                    <p>ENVIO PARA TODO O BRASIL &#x1F69A;</p>
                    <div class="user-bag">
                        <div class="user"><a href="./login"><i class="fa-regular fa-user" style="color: #dfdfdf;"></i></a></div>
                        <div id="bag"><i class="fa-solid fa-bag-shopping" id="bagOpen" style="color: #dfdfdf;"></i></div>
                    </div>
                </div>
                <div class="down">
                    <div class="logo">
                        <a href="./home"><img src="assets/logo-massarim.png" alt="menu"></a>
                    </div>
                    <div class="categorias">
                        <c:forEach items="${categorias}" var="categoria" >
                            <a href="./buscar-produtos?cat=${categoria.idCategorias}&busca=">${categoria.nome}</a>
                        </c:forEach>
                    </div>
                    <div class="search">
                        <form class="d-flex" action="buscar-produtos" method="get">
                            <input class="busca" type="search" name="busca" placeholder="Buscar" aria-label="Search">
                            <button class="btnPesquisa" type="submit"><i class="fa-solid fa-magnifying-glass" style="color: #202020;"></i></button>
                        </form>
                    </div>
                </div>
        </header>

        <div id="sacola">
            
            <div id="bg-bag">
                
            </div>
            <div id="container-bag">
                <div class="head-bag">
                    <h3 id="titulo">sacola</h3>
                    <button id="fecharBag">fechar</button>
                </div>
                <div id="container-prod"></div>
                <div class="foot-bag">
                    <p>Total: </p>
                    <button id="checkcout">checkout</button>
                </div>
            </div>
        </div>
        <script src="js/carrinho.js"></script>
    </body>
</html>
