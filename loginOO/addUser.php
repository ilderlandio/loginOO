<?php 
include_once("classes/Crud.php");
extract($_POST); 

$usuario=password_hash("$usuario",PASSWORD_DEFAULT); 
$senha = password_hash("$senha",PASSWORD_DEFAULT); 

$obj = new Crud();

$res = $obj->Create($usuario,$senha,$email); 
if($res){
	echo "Usuário Cadastrado!";
} 


?>