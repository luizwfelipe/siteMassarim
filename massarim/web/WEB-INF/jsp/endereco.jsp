<%-- 
    Document   : endereco
    Created on : 12/06/2024, 00:55:22
    Author     : Admin
--%>


<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>endereço * MSSRM</title>
    </head>
    <body>
        <main>
            <div class="container">
                <div id="cima">
                    <div id="endereco-existente">
                        <h3>selecione um endereço existente:</h3>
                        <div id="enderecos"></div>
                    </div>
                </div>
                <div id="baixo">
                    <div id="formulario">
                        <form action="logar" id="formulario" method="post">
                            <div class="input">
                                <label for="cep">CEP</label>
                                <input type="number" name="cep" id="cep" placeholder="CEP do local" required>
                            </div>
                            <div class="input">
                                <label for="rua">Rua</label>
                                <input type="text" name="rua" id="rua" placeholder="Qual a rua?" required>
                            </div>
                            <div class="input">
                                <label for="numero">Número</label>
                                <input type="number" name="numero" id="numero" placeholder="Digite o número da residência" required>
                            </div>
                            <div class="input">
                                <label for="complemento">Complemento</label>
                                <input type="text" name="complemento" id="complemento" placeholder="Possui complemento?" required>
                            </div>
                            <div class="input">
                                <label for="referencia">Referência</label>
                                <input type="text" name="referencia" id="referencia" placeholder="Você possui alguma referência?" required>
                            </div>
                            <div class="input">
                                <label for="bairro">Bairro</label>
                                <input type="text" name="bairro" id="bairro" placeholder="Qual o bairro?" required>
                            </div>
                            <div class="input">
                                <label for="cidade">Cidade</label>
                                <input type="text" name="cidade" id="cidade" placeholder="Qual a cidade?" required>
                            </div>
                            <div class="input">
                                <label for="estado">Estado</label>
                                <input type="text" name="estado" id="estado" placeholder="Qual estado?" required>
                            </div>
                            <button type="submit" class="btn-endereco">Cadastrar endereço</button>
                        </form>
                    </div>
                    <div id="img"><img src="assets/van.png" alt=""></div>
                </div>
            </div>
        </main>
    </body>
</html>
