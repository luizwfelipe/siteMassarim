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
        <link rel="stylesheet" href="styles/login.css">
        <title>Login</title>
    </head>
    <body>
        <main>
        <form action="login">
        <div class="container" name="frmLogin">
            <img href="./home" class = "logo" src="assets/logo-massarim-white-removebg-preview.png" alt="menu"/>
            <h1>Log in</h1>
            <div class="sistema"><p>Ao entrar você concorda com a nossa <a href="#">política de privacidade</a></p></div>
            <div class="ipt">

                <div class="input">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" placeholder="Digite seu email..." required>
                    </div>
            </div>
            <div class="ipt">
                <div class="input">
                    <label for="senha">Senha</label>
                    <input type="password" name="senha" id="senha" placeholder="Digite sua senha..." required>
                    </div>
                    
            </div>
            <button type="submit" class="btn btn-login btn-block">Entrar</button>
            <p>Não possui uma conta? <a href="./cadastro">Cadastre-se!</a></p>
        </div>
        </form>
            
        </main>
</html>
