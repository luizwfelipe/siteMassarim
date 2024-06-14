<%-- 
    Document   : endereco
    Created on : 12/06/2024, 00:55:22
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/endereco.css">
        <title>endereço * MSSRM</title>
    </head>
    <body>
        <header></header>
        <main>
            <div class="container">
                <div id="cima">
                    <div id="endereco-existente">
                        <h3>selecione um endereço existente:</h3>
                            <div id="enderecos">
                                <c:forEach var="endereco" items="${enderecos}">
                                    <div class="endereco-unico">
                                        <div id="endereco-esquerda">
                                            
                                            <h3 id="endereco-cep">${endereco.cep}</h3>
                                            <h3 id="endereco-rua">${endereco.rua}</h3>
                                            <h3 id="endereco-numero">${endereco.numero}</h3>
                                            <h3 id="endereco-complemento">${endereco.complemento}</h3>
                                        </div>
                                        <div id="endereco-direita">
                                            <h3 id="endereco-referencia">${endereco.referencia}</h3>
                                            <h3 id="endereco-bairro">${endereco.bairro}</h3>
                                            <h3 id="endereco-cidade">${endereco.cidade}</h3>
                                            <h3 id="endereco-estado">${endereco.estado}</h3>
                                            
                                        </div>   
                                        <div id="escolha-endereco">
                                            <button>escolher</button>
                                        </div>
                                        
                                        
                                    </div>
                                </c:forEach>
                            </div>
                        
                    </div>

                </div>
                <div id="hrline"><hr></div>
                <div id="baixo">

                    <div id="formulario">
                        <div class="novo-end">
                        <h3>crie um novo endereço abaixo</h3>
                        <h4>novo endereço</h4>
                        </div>

                        <form action="cadastrarEndereco" id="form-method" method="post">
                            <div id="inputs-lados">
                                <div id="inputs-esquerda">
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
                                </div>
                                <div id="inputs-direita">
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
                                </div>
                            </div>
                         <button type="submit" class="btn-endereco">cadastrar endereço</button>
                        </form>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>
