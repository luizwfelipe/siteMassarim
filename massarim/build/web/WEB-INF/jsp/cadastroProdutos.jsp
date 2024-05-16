<%-- 
    Document   : cadastroProdutos
    Created on : 30/04/2024, 16:37:13
    Author     : Senai
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styles/cadastroP.css">
    <title>Cadastro de Produto</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <main>
        <div class="container">
            <h2>Cadastre o Produto!</h2>
            <form action="cadastrarProduto" method="POST" enctype="multipart/form-data">
                <div class="input-cont">
                    <label for="nome">Nome do produto:</label>
                    <input type="text" class="txt" id="nome" name="nome" required>                    
                </div>
                <div class="input-cont">
                    <label for="fkIdCategoria">Categoria:</label>
                    <select class="txt" id="fkIdCategoria" name="fkIdCategoria">
                        <c:forEach items="${categorias}" var="categoria" >
                            <option value="${categoria.idCategorias}">${categoria.nome}</option>
                        </c:forEach>
                    </select>             
                </div>
                <div class="input-cont">
                    <label for="preco">Preço do produto:</label>
                    <input type="number" step="0.01" class="txt" id="preco" name="preco" required>                
                </div>
                <div class="input-cont">
                    <label for="descricao">Descrição do produto:</label>
                    <textarea type="text" class="txt" id="descricao" name="descricao" rows="5"></textarea>
                </div>
                <div class="input-cont">
                    <label for="estoque">Estoque do produto:</label>
                    <input type="number" class="txt" id="estoque" name="estoque" required>
                </div>
                <div class="input-cont">
                    <label for="imagem">Imagem do Produto:</label>
                    <input type="file" class="txt-imagens" id="imagem" name="imagem">
                </div>
                <button type="submit" class="btnSubmit">Cadastrar</button>
            </form>
        </div>
    </main>
    <!--
        <div class="container">
        <h2>Cadastro de Produto</h2>
        <form action="cadastrarProduto" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="nome">Nome:</label>
                <input type="text" class="txt" id="nome" name="nome" required>
            </div>
            <div class="form-group">
                <label for="fkIdCategoria">Categoria:</label>
                <select class="txt" id="fkIdCategoria" name="fkIdCategoria">
                    <c:forEach items="${categorias}" var="categoria" >
                        <option value="${categoria.idCategorias}">${categoria.nome}</option>
                    </c:forEach>
                </select>
                    
            </div>
            <div class="form-group">
                <label for="preco">Valor:</label>
                <input type="number" step="0.01" class="txt" id="preco" name="preco" required>
            </div>
            <div class="form-group">
                <label for="descricao">Descrição:</label>
                <textarea type="text" class="txt" id="descricao" name="descricao" rows="3"></textarea>
            </div>
            <div class="form-group">
                <label for="estoque">Estoque:</label>
                <input type="number" class="txt" id="estoque" name="estoque" required>
            </div>
            <div class="form-group">
                <label for="imagem">Imagem do Produto:</label>
                <input type="file" class="txt-imagens" id="imagem" name="imagem">
            </div>
            <button type="submit" class="btn btn-primary">Cadastrar</button>
        </form>
    </div>
    -->
    
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>

