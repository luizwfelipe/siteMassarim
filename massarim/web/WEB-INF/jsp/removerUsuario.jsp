<%-- 
    Document   : removerUsuario
    Created on : 16/06/2024, 23:56:36
    Author     : Admin
--%>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/72aebe393c.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="styles/remover-usuario.css">
        <title>remover usuário * MSSRM</title>
    </head>
    <body>
        <h1>REMOVER USUÁRIO</h1>
        <div class="containerUsuario">
            <div id="cartao-info">
                <h4>IDENTIFICAÇÃO</h4>
                <h4>NOME</h4>
                <h4>EMAIL</h4>
                <h4>TELEFONE</h4>
                <h4>AÇÃO</h4>
            </div>
            <c:forEach var="usuarios" items="${usuarios}">
                <div class="cartao">
                    <h5 id="id-usuario">${usuarios.idUsuario}</h5>
                    <h5 id="nome-usuario">${usuarios.nome}</h5>
                    <h5 id="email-usuario">${usuarios.email}</h5>
                    <h5 id="telefone-usuario">${usuarios.telefone}</h5>
                    <h5 id="lixeira-usuario"><i class="fa-solid fa-trash" style="color: #f2f2f2;"></i></h5>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
