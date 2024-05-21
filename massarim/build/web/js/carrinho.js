document.addEventListener("DOMContentLoaded", function() {
    const sacola = document.getElementById("sacola");
    const btnAbrir = document.getElementById("bagOpen");
    const btnFechar = document.getElementById("fecharBag");

    btnAbrir.addEventListener("click", function() {
        sacola.classList.add("ativo");
    });

    btnFechar.addEventListener("click", function() {
        sacola.classList.remove("ativo");
    })

function carregarCarrinho() { 
    const request = new XMLHttpRequest();
    request.open("GET", "sacola", true);
    request.onreadystatechange = function() {
        if (request.readyState === 4 && request.status === 200) {
            const data = JSON.parse(request.responseText);
            console.log(data);
            const sacola = document.getElementById("container-prod");

            sacola.innerHTML = "";

            data.forEach(produto => {
                const divP = document.createElement("div");
                divP.classList.add("produto");

                const divImg = document.createElement("div");
                divImg.classList.add("container-img");
                divImg.innerHTML = '<img src="'+produto.imagem+'" >';

                const divInfo = document.createElement("div");
                divInfo.classList.add("container-info");
                divInfo.innerHTML = '<h3>'+produto.nome+'</h3><h4 class="preco">R$ '+produto.preco.toFixed(2)+'</h4>';

                divP.appendChild(divImg);
                divP.appendChild(divInfo);

                sacola.appendChild(divP);
            });


        }
    };

    request.send();
}

carregarCarrinho();

function adicionarItemAoCarrinho(idProduto) {

    const request = new XMLHttpRequest();

    request.open("POST", "sacola", true);
    request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    request.onreadystatechange = function() {
        if (request.readyState === 4 && request.status === 200) {
            carregarCarrinho();
        }
    };
    request.send("id=" + idProduto);
}
const btn = document.getElementById("addSac");
if(btn !== null){
    btn.addEventListener("click", function(){
        const idProduto = this.getAttribute("data-idproduto");
        adicionarItemAoCarrinho(idProduto);
    });
}
});