<?php 
// importa a classe Sessao
include_once("classes/Sessao.php"); 

$userForm = $_POST['usuario']; 
$userPass = $_POST['senha']; 

// cria objeto da classe Sessao
$obj = new Sessao; 

// chama método da classe Sessão que consulta os usuários do BD
$dados = $obj->readUsers(); 

// var_dump($dados); 

foreach($dados as $usuario => $valores){
    if(password_verify($userForm,$valores->usuario) && password_verify($userPass,$valores->senha)){
        Sessao::autorizado(); 
        break;
    }else{
        $loginNot = true; // se a autenticação falhar, não achar usuários e senhas 
    }   
}
if($loginNot){
echo "Usuário não encontrado, tente novamente! <br>";
echo "<a href='index.php'> Voltar à página de login </a>";
}
?>