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
    
});