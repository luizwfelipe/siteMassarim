<%-- 
    Document   : pagamento
    Created on : 13/06/2024, 22:39:19
    Author     : Admin
--%>

<%@page pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/72aebe393c.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="styles/pagamento.css">
        <title>pagamento * MSSRM</title>
    </head>
    <body>
        <header></header>
        <main>
            <div id="container">
                <div id="tipo-pagamento">
                    <div class="tipo"><i class="fa-brands fa-pix" id="pix-abrir" style="color: #616161;"></i>
                        <h3>pix</h3></div>
                    <div class="tipo"><i class="fa-solid fa-credit-card" id="credito-abrir" style="color: #616161;"></i>
                        <h3>crédito</h3></div>
                    <div class="tipo"><i class="fa-regular fa-credit-card" id="debito-abrir" style="color: #616161;"></i>
                        <h3>débito</h3></div>
                    <div class="tipo"><i class="fa-solid fa-barcode" id="boleto-abrir" style="color: #616161;"></i>
                        <h3>boleto</h3></div>
                </div>
                <div id="pix">
                    <div id="parteCima-pix">
                        <div id="pagar-qr">
                            <p>pix qrcode</p>
                            <img src="assets/mssrmqrcode.svg" alt="qrcode-pix">
                        </div>
                        <div id="pagar-pix-code">
                            <p>código pix</p>
                            <div id="code-pix">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ac tortor vitae purus faucibus ornare suspendisse sed</p>
                            </div>
                            <button id="btn-copiar-pix">copiar código pix</button>
                        </div>
                    </div>
                    <div id="parteBaixo-pix">
                        <div id="intrucoes-pix">
                            <h3>instruções</h3>
                            <p> Abra o aplicativo do seu banco, navegue até a seção de transações instantâneas e selecione a opção para efetuar um pagamento rápido. 
                                Agora, é hora de usar a tecnologia: aponte a câmera do seu dispositivo para o QR Code ou copie e cole o código Pix fornecido. 
                                Revise atentamente todas as informações apresentadas e, quando estiver tudo certo, confirme o pagamento.
                                Voilà! Assim que a transação for aprovada, seu pedido será automaticamente processado e concluído.</p>
                        </div>
                    </div>
                </div>
                <div id="credito"></div>
                <div id="debito"></div>
                <div id="boleto"></div>
            </div>
        </main>
    </body>
</html>
