<?php

class App{

    protected $controller = 'homeController'; // CONTROLLER

    protected $method = 'index'; // METODO/ACTION

    protected $params = []; // PARAMETROS

    // Construtor
    public function __construct(){
        
        $url = $this->parseUrl(); // Função para recuperar em vetor (controller + método + parâmetros)

        if(file_exists('../app/controllers/'.$url[0].'.php')) // Verifica se o controller existe, caso contrário mantém a Home
        {
            $this->controller = $url[0]; // Muda para o controller descrito na URL
            unset($url[0]); // limpa índice no vetor
        }

        require_once '../app/controllers/'.$this->controller.'.php'; // Chama arquivo controller

        $this->controller = new $this->controller; //Reseta valor do Controller

        if(isset($url[1])) // Verifica se algum método foi setado
        {
            if(method_exists($this->controller, $url[1])) // Verifica se método existe no Controller
            {
                $this->method = $url[1]; // Muda para o método descrito na URL.
                unset($url[1]); // Limpa índice no valor
            }
        }

        $this->params = $url ? array_values($url) : []; // recebe parâmetros se existir algum passado por URL

        call_user_func_array([$this->controller, $this->method], $this->params); // Função responsável por executar o arquivo/método/parametros utilizados 
    }

    // Função para quebrar URL em vetor $url = [controller/método/param1/param2...]
    public function parseUrl(){
        if(isset($_GET['url'])){
            return $url = explode('/', filter_var(rtrim($_GET['url'],'/'), FILTER_SANITIZE_URL));
        }
    }

}