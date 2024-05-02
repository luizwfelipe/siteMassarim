const form = document.getElementById("form-login");

form.addEventListener("submit",function(event){
    event.preventDefault();

    const usuario = document.getElementById("usuario").value.trim();
    const senha = document.getElementById("senha").value.trim();

    if(usuario ==="" || senha === ""){
        alert("Usuário e Senha não preenchidos!")
    }else{
        form.onsubmit();
    }
})