<?php
include_once("Conexao.php");

class Crud extends Conexao { 
  private $stmt;  
  public function Create($user,$pass,$email){
    $this->stmt = $this->Conect()->prepare("INSERT INTO usuarios (usuario,senha,email) VALUES(:nome,:chave,:eml)");

    return $this->stmt->execute(array(
            ":nome"=>$user,
            ":chave"=>$pass, 
            ":eml"=>$email
        ));     
  }
}
