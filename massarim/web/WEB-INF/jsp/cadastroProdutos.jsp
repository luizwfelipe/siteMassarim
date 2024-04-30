<%-- 
    Document   : cadastroProdutos
    Created on : 30/04/2024, 16:37:13
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="cadastroProdutos" method="POST">
                <div class="container">
                    <img class="logo" src="assets/logo-massarim-white-removebg-preview.png" alt="">
                    <h1>CADASTRE PRODUTO</h1>
                    <div class="input">
                        <label for="nome">Nome</label>
                        <input type="text" name="nome" id="nome" placeholder="Digite seu Nome..." required>
                    </div>
                    <div class="input">
                        <label for="categoria">Categoria</label>
                        <input type="text" name="categoria" id="categoria" placeholder="Digite sua categoria..." required>
                    </div>
                    <div class="input">
                        <label for="descricao">descricao</label>
                        <input type="text" name="descricao" id="descricao" placeholder="Digite seu descricao..." required>
                    </div>
                    <div class="input">
                        <label for="preco">preco</label>
                        <input type="number" name="preco" id="preco" placeholder="Digite seu valor..." required >
                    </div>
                    <div class="input">
                        <label for="estoque">Telefone</label>
                        <input type="number" name="estoque" id="estoque" placeholder="Digite seu estoque..." required>
                    </div>
                    <button type="submit" class="btn btn-cadastro btn-block">Cadastrar</button>
                </div>
        </form>
    </body>
</html>
