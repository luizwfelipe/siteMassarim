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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
            <jsp:include page="header.jsp"></jsp:include>
    <main>
        
        <div class="containerProduto">
                    <c:forEach var="produtos" items="${produto}">

                    <div class="cartao">
                        <a href="./produto-massarim?focado=${produtos.idProduto}">
                        <div class="imagemProduto">
                          <img src="${produtos.imagem}" alt="${produtos.nome}">             
                        </div>
                        <div class="cartao-info">
                            <h5 class="nome-produto">${produtos.nome}</h5>
                            <p class="preco-produto">R$ ${produtos.preco}</p>
                        </div>
                    </div>
                        </a>
                    </c:forEach>
                </div>
    </main>
    </body>
</html>
