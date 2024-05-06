<%-- 
    Document   : login
    Created on : 30/04/2024, 14:49:19
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/logar.css">
        <title>Login</title>
    </head>
    <body>
        <main>
            <div class="container">
                <div class="image">
                    <img src="assets/massarimMODA.png" alt="">
                </div>
                <div class="form">
                    <form action="logar" id="formulario" method="post">
                        <div class="titulo">
                            <h1>Entrar</h1>
                        </div>
                        
                        <div class="input">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" placeholder="Digite seu email..." required>
                        </div>
                        <div class="input">
                            <label for="senha">Senha</label>
                            <input type="password" name="senha" id="senha" placeholder="Digite sua senha..." required>
                        </div>
                        <button type="submit" class="btn btn-login btn-block">Log In</button>
                        <p>Não possui uma conta? <a href="./cadastrar">Cadastre-se!</a></p>
                    </form>
                </div>
            </div>
        </main>
</html>
