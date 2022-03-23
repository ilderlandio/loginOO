<?php 
include_once("classes/Sessao.php"); 
// para ter acesso ao método estático logoff()
if(isset($_GET['logoff'])){
  Sessao::logoff(); 
  // para criar menos arquivos, chamo o método estático que quebra a sesão
}
   session_start();
   if(isset($_SESSION['login'])) {
?>
<!DOCTYPE html>
<html>
<head>
	<title> acesso restrito </title>
</head>
<body>
  <h2> Página de Cadastro - Orientadores </h2>
  <form action="addUser.php" method="post">
     <p> Digite o nome de Usuário
      <input type="text" name="usuario">
     </p>
     <p> Criar uma senha
      <input type="password" name="senha">
      </p>
      <p> E-mail
      <input type="email" name="email">
      </p>
    <p> <button type="submit"> Cadastrar </button> </p>
  </form>  

<a href="?logoff">Sair</a> <!-- aqui no href estou passando um valor via get para a prória página -->

</body>
</html>
<?php 
  } // fecha o bloco do if 
  else{
    echo "Você não tem acesso autorizado! <br>";
    echo "<a href='index.php'> Voltar à página de login </a>";
  }
?>