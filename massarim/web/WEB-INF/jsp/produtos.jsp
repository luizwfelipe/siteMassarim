<%-- 
    Document   : produtos
    Created on : 04/05/2024, 19:26:50
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/produtos.css">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
    <main>
        <div class="containerProduto">
            <c:forEach var="produtos" items="${produto}">
            <div class="card">
                <div class="imagemProduto">
                    <img src="assets/fotoTestes.jpg" alt="">
                </div>
                <div class="card-info">
                    <h5 class="nome-produto">${produtos.nome}</h5>
                    <!--<p class="cat-produto"> ${produtos.fkIdCategoria}</p>-->
                    <p class="preco-produto">R$ ${produtos.preco}</p>
                </div>
            </div>
            </c:forEach>
        </div>

    </main>
    </body>
</html>
