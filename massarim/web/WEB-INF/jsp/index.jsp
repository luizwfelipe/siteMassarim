
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/index.css">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
            <jsp:include page="header.jsp"></jsp:include>

    <main>
        <section>
            <img src="assets/massarim-fundo-home (1).png" alt="">
        </section>
                <div class="containerProduto">
                    <c:forEach var="produtos" items="${produto}">

                    <div class="card">
                        <a href="./produto-massarim?focado=${produtos.idProduto}">
                        <div class="imagemProduto">
                            <img src="${produtos.imagem}" alt="${produtos.nome}">
                        </div>
                        <div class="card-info">
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
