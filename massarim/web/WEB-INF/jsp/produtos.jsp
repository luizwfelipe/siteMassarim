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
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
    <main>
        <c:forEach var="produtos" items="${produto}">
            <div class="col-md-4 mb-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">${produtos.nome}</h5>
                        <p class="card-text">Categoria: ${produtos.fkIdCategoria}</p>
                        <p class="card-text">Valor: R$ ${produtos.preco}</p>
                        <p class="card-text">Descrição: ${produtos.descricao}</p>
                    </div>
                </div>
            </div>
        </c:forEach>

    </main>
    </body>
</html>
