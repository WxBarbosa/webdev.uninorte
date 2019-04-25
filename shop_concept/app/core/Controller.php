<?php

class Controller{
    
    public function model($model)
    {
        require_once '../app/models/'. $model .'.php';
        return new $model();
    }


    public function view($view, $data = [])
    {
        require_once '../app/views/'. $view .'.php';
    }

    public function dao($dao){
        require_once '../app/dao/'. $dao .'.php';
        return new $dao();
    }
}