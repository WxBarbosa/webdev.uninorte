function ComparePasswords(password,passwordRepeat){
    if(password != passwordRepeat){
        return false;
    }else{
        return true;
    }
}

$("#btnCadastrar").on('click', function(){
    var password = $("senha").val();
    var passwordRepeat = $("senha_repeat").val();
    var name = $("nome").val();
    var email = $("email").val();
    var genre = $("sexo").val();
    var cpf = $("cpf").val();
    if(password !="" && passwordRepeat != "" && name != "" && email != "" && genre != "" && cpf != ""){
        if(ComparePasswords(password,passwordRepeat)){
            
        }else{
            e.preventDefault();
            alert("As senhas não são iguais!");
        }
    }else{
        alert("Preencha todos os campos!");
    }
});