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
                    <div class="inform"><p>ENVIO PARA TODO O BRASIL &#x1F69A;</p></div>
                    <div class="user-bag">
                        <div class="user"><i class="fa-regular fa-user" style="color: #dfdfdf;"></i></div>
                        <div class="bag"><i class="fa-solid fa-bag-shopping" style="color: #dfdfdf;"></i></div>
                    </div>
                </div>
                <div class="down">
                    <div class="logo">
                        <img src="assets/logo-massarim.png" alt="menu">
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
    </body>
</html>
