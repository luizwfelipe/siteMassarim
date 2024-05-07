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
        <div id="carouselExampleIndicators" class="carousel slide">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="assets/massarimProd.png" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="assets/massarimProd-3.png" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="assets/massarimProd-2.png" class="d-block w-100" alt="...">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        <div class="containerProduto">
                    <c:forEach var="produtos" items="${produto}">

                    <div class="card">
                        <a href="./produto-massarim?focado=${produtos.idProduto}">
                        <div class="imagemProduto">
                            <img src="data:image/jpeg;base64,${produtos.imagemBase64}" alt="${produtos.nome}">
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
