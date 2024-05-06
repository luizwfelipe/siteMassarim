<%-- 
    Document   : cadastro
    Created on : 30/04/2024, 14:27:50
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar</title>
        <link href="styles/cadastroUser.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <main>
            <div class="container">
                <div class="image">
                    <img src="assets/eagleMassarim.png" alt="">
                </div>
                <div class="form">
                    <form action="cadastrar" method="POST">
                        <h1>Cadastrar</h1>
                        <div class="input">
                            <label for="nome">Nome</label>
                            <input type="text" name="nome" id="nome" placeholder="Digite seu Nome..." required>
                        </div>
                        <div class="input">
                            <label for="senha">Senha</label>
                            <input type="password" name="senha" id="senha" placeholder="Digite sua senha..." required>
                        </div>
                        <div class="input">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" placeholder="Digite seu email..." required>
                        </div>
                        <div class="input">
                            <label for="cpf">Cpf</label>
                            <input type="text" name="cpf" id="cpf" placeholder="Digite seu cpf..." required autocomplete="off" maxlength="14">
                        </div>
                        <div class="input">
                            <label for="telefone">Telefone</label>
                            <input type="text" name="telefone" id="telefone" placeholder="Digite seu telefone..." required maxlength="14">
                        </div>
                        <div class="input">
                            <label for="dataNascimento">Data de Nascimento</label>
                            <input type="date" name="dataNascimento" id="dataNascimento" placeholder="Digite sua data de nascimento..." required>
                        </div>
                        <button type="submit" class="btn btn-cadastro btn-block">Cadastre-se</button>
                        <p>Já possui uma conta? <a href="./login">Faça login!</a></p>
                    </form>
                </div>
            </div>
        </main>
        
    </body>
</html>
