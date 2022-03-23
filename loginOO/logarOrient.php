<?php 
include_once("classes/Sessao.php"); 

$orientador = $_POST['usuario'];
$password = $_POST['senha']; 

$controle = $_POST['orientador']; 
 
// cria objeto da classe Sessao
$obj = new Sessao; 

$dados = $obj->readOrient(); 
foreach($dados as $usuario => $valores){
    if(password_verify($orientador,$valores->usuario) && password_verify($password,$valores->senha)){
        Sessao::autorizado($controle); 
        break;
    }else{
        $loginNot = true; // se a autenticação falhar, não achar usuários e senhas 
    }   
}

