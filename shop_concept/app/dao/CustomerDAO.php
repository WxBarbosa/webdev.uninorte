<?php

require_once 'Conexao.php';

class CustomerDAO
{
    public static function getInstance() {
        if (!isset(self::$instance))
            self::$instance = new CustomerDAO();
  
        return self::$instance;
    }


    public function Inserir($customer) {
        try {
            $sql = "INSERT INTO cliente (   
                nome,
                sexo,
                cpf,
                senha,
                email)
                VALUES (
                :nome,
                :sexo,
                :cpf,
                :senha,
                :email)";
  
            $p_sql = Conexao::getInstance()->prepare($sql);
            $p_sql->bindValue(":nome", $customer->name);
            $p_sql->bindValue(":sexo", $customer->sexy);
            $p_sql->bindValue(":cpf", $customer->cpf);
            $p_sql->bindValue(":senha", $customer->password);
            $p_sql->bindValue(":email", $customer->email);
  
  
            return $p_sql->execute();
        } catch (Exception $e) {
            print "Ocorreu um erro ao tentar executar esta ação, foi gerado um LOG do mesmo, tente novamente mais tarde.";
            echo ("Erro: Código: " . $e->getCode() . " Mensagem: " . $e->getMessage());
        }
    }

}