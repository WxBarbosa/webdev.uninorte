<?php 

class CustomerController extends Controller
{

    public function index(){
        $this->view('customer/register');
    }

    public function register(){
        //if(isset($_POST['name']) && isset($_POST['sexy']) && isset($_POST['cpf']) && isset($_POST['password']) && isset($_POST['email']))
        //{
            $customer = $this->model('CustomerModel');
            $customerDAO = $this->dao('CustomerDAO');
            
            $customer->name = 'wyll';//$_POST['name'];
            $customer->sexy = 1; //$_POST['sexo'];
            $customer->cpf = '32'; //$_POST['cpf'];
            $customer->password = 'teste'; //$_POST['senha'];            
            $customer->email = 'teste'; //$_POST['email'];

           $customerDAO->Inserir($customer);
        //}else{
        //    $result = [ 'data' => 'error'];
        //    echo json_encode($result);
        //}
    }

}