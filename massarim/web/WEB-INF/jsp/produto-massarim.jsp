<%-- 
    Document   : produto-massarim
    Created on : 06/05/2024, 17:08:31
    Author     : Senai
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/produto-massarim.css">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <main>
            <div class="container">
                <div class="imagens">
                    <img src="${produto.imagem}" alt="${produto.nome}">             
                </div>
                <div class="info-prod">
                    <div id="nome-preco">
                        <h1 id="nome-produto">${produto.nome}</h1>
                        <h3 id="preco-produto">R$ ${produto.preco}</h3>
                    </div>
                    <div class="addBag">
                        

                        <button id="addSac" data-idproduto="${produto.idProduto}">COMPRAR</button>
                        <div id="quantd">
                            <p id="qtd">quantidade:</p>
                            <input type="number">
                        </div>
                    </div>
                    
                    <div class="descricao">
                        <p>${produto.descricao}</p>
                    </div>
                </div>
            </div>
            
        </main>
        <script src="js/carrinho.js"></script>
    </body>
</html>
