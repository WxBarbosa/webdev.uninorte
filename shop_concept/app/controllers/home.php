<?php 

class Home extends Controller
{

    public function setCustomer($name = []){
        $customer = $this->model('Customer');
        $customer->name = $name;
        $this->view('home/index', ['name' => $customer->name]);
    }

}