<?php 

class CustomerController extends Controller
{

    public function index(){
        $this->view('customer/index');
    }

    public function register(){
        $result ='';
        if(isset($_POST['name']) && isset($_POST['sexy']) && isset($_POST['cpf']) && isset($_POST['password']) && isset($_POST['email']))
        {
            $customer = $this->model('CustomerModel');
            $customerDAO = $this->dao('CustomerDAO');
            
            $customer->name = $_POST['name'];
            $customer->sexy = $_POST['sexy'];
            $customer->cpf = $_POST['cpf'];
            $customer->password = $_POST['password'];            
            $customer->email = $_POST['email'];

            $result = ['data' => $customerDAO->Inserir($customer)];
        }else{
            $result = [ 'data' => 'Preencha todos os campos!'];
        }

        echo json_encode($result);
    }
}