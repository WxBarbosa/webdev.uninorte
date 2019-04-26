<?php require('../app/views/defaults/header.php'); ?>

<!--Header-->
<div class="container">
  
  <!-- Produtos -->
  <div class="container">
    <h3 class="text-center">Registrar</h3>
    <div class="row">
        <div class="col-md-4 col-lg-4 col-xs-12">
        </div>
        <div class="col-md-4 col-lg-4 col-xs-12">
            <form id="form_register">          
                <div class="form-group">
                    <label for="name">Nome</label>
                    <input type="text" name="name" required class="form-control" id="name" placeholder="Fulano M. J">
                </div>
                <div class="form-group">
                    <select id="sexy" name="sexy" class="browser-default custom-select">
                        <option value="1">Masculino</option>
                        <option value="2">Feminino</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="password">Senha</label>
                    <input type="password" name="password" required class="form-control" id="password" placeholder="*********">
                </div>
                <div class="form-group">
                    <label for="passwordRepeat">Repetir senha</label>
                    <input type="password" name="passwordRepeat" required class="form-control" id="passwordRepeat" placeholder="********">
                </div>
                <div class="form-group">
                    <label for="cpf">CPF</label>
                    <input type="text" name="cpf" required class="form-control" id="cpf" placeholder="000.000.000-00">
                </div>

                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" required class="form-control" id="email" placeholder="example@domain.com">
                </div>
                <a href="#">Esqueceu seu e-mail?</a>
                <a href="#">Esqueceu sua senha?</a>
                <input type="submit" class="btn btn-primary" value="Cadastrar">
            </form>
            <div><span class="alert alert-sucess" id='message'></span></div>
        </div>
        <div class="col-md-4 col-lg-4 col-xs-12">
        </div>  
    </div>
  </div>
</div>

<script src="../js/customer/register.js"></script>
<script src="../js/jquery.validate.js"></script>
<script src="../js/jquery.validate.min.js"></script>
<?php require('../app/views/defaults/footer.php'); ?>