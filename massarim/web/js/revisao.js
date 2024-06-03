document.addEventListener("DOMContentLoaded", function() {
    const sacolaContainer = document.getElementById("container-revisao");

    function carregarCarrinho() {
        const storedCart = JSON.parse(localStorage.getItem('cart'));

        sacolaContainer.innerHTML = "";

        storedCart.forEach(produto => {
            const divP = document.createElement("div");
            divP.classList.add("produto");

            const divImg = document.createElement("div");
            divImg.classList.add("container-img");
            divImg.innerHTML = `<img src="${produto.image}" >`;

            const divInfo = document.createElement("div");
            divInfo.classList.add("container-info");

            const divParteCima = document.createElement("div");
            divParteCima.classList.add("parteCima");
            divParteCima.innerHTML = `<h3>${produto.nome}</h3>`;

            const divParteBaixo = document.createElement("div");
            divParteBaixo.classList.add("parteBaixo");
            divParteBaixo.innerHTML = 
                `<h4 id="preco">R$ ${produto.preco.toFixed(2)}</h4>
                 <p>Quantidade: ${produto.quantidade}</p>`;

            divInfo.appendChild(divParteCima);
            divInfo.appendChild(divParteBaixo);

            divP.appendChild(divImg);
            divP.appendChild(divInfo);

            sacolaContainer.appendChild(divP);
        });

        calculateTotal(storedCart);
    }

    function calculateTotal(cart) {
        const total = cart.reduce((acc, curr) => acc + (curr.preco * curr.quantidade), 0);
        document.querySelector('#tt-revisao span').textContent = 'R$ ' + total.toFixed(2);
    }

    carregarCarrinho();
});
