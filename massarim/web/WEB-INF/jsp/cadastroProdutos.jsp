<%-- 
    Document   : cadastroProdutos
    Created on : 30/04/2024, 16:37:13
    Author     : Senai
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cadastro de Produto</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2>Cadastro de Produto</h2>
        <form action="cadastrarProduto" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="nome">Nome:</label>
                <input type="text" class="form-control" id="nome" name="nome" required>
            </div>
            <div class="form-group">
                <label for="fkIdCategoria">Categoria:</label>
                <select class="form-control" id="fkIdCategoria" name="fkIdCategoria">
                    <c:forEach items="${categorias}" var="categoria" >
                        <option value="${categoria.idCategorias}">${categoria.nome}</option>
                    </c:forEach>
                </select>
                    
            </div>
            <div class="form-group">
                <label for="preco">Valor:</label>
                <input type="number" step="0.01" class="form-control" id="preco" name="preco" required>
            </div>
            <div class="form-group">
                <label for="descricao">Descrição:</label>
                <textarea type="text" class="form-control" id="descricao" name="descricao" rows="3"></textarea>
            </div>
            <div class="form-group">
                <label for="estoque">Valor:</label>
                <input type="number" class="form-control" id="estoque" name="estoque" required>
            </div>
            <div class="form-group">
                <label for="imagem">Imagem do Produto:</label>
                <input type="file" class="form-control-file" id="imagem" name="imagem">
            </div>
            <button type="submit" class="btn btn-primary">Cadastrar</button>
        </form>
    </div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>

