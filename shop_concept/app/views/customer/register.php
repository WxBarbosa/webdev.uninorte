<?php include('./defaults/header.php'); ?>

<!--Header-->
<div class="container">
  
  <!-- Produtos -->
  <div class="container">
    <h3 class="text-center">Login</h3>
    <div class="row">
        <div class="col-md-4 col-lg-4 col-xs-12">
        </div>
        <div class="col-md-4 col-lg-4 col-xs-12">
            <form>
                <div class="form-check check-left">
                    <input class="form-check-input" type="radio" name="tipo-pessoa" id="pessoa-fisica" value="1" checked>
                    <label class="form-check-label" for="pessoa-fisica">
                        Pessoa física
                    </label>
                </div>   
                <div class="form-check check-rigth">     
                    <input class="form-check-input" type="radio" name="tipo-pessoa" id="pessoa-jurídica" value="2">
                    <label class="form-check-label" for="pessoa-jurídica">
                        Pessoa jurídica
                    </label>       
                </div>                
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" required class="form-control" id="nome" placeholder="Fulano M. J">
                </div>
                <div class="form-group">
                    <select id="sexo" class="browser-default custom-select">
                        <option value="1">Masculino</option>
                        <option value="2">Feminino</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="senha">Senha</label>
                    <input type="password" required class="form-control" id="senha" placeholder="*********">
                </div>
                <div class="form-group">
                    <label for="senha-repeat">Repetir senha</label>
                    <input type="password" required class="form-control" id="senha-repeat" placeholder="********">
                </div>
                <div class="form-group">
                    <label for="cpf">CPF</label>
                    <input type="text" required class="form-control" id="cpf" placeholder="000.000.000-00">
                </div>
                <a href="#">Esqueceu seu e-mail?</a>
                <a href="#">Esqueceu sua senha?</a>
                <button id="btnCadastrar" class="btn btn-primary">Cadastrar</button>
            </form>
        </div>
        <div class="col-md-4 col-lg-4 col-xs-12">
        </div>  
    </div>
  </div>
</div>

<?php include('./__defaults/footer.php'); ?>