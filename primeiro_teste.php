<?php

  //credenciais
  
  $servidor="localhost";
  $usuario="root";
  $senha="";
  $db="escola";
  
  //conexao
 $conexao=mysqli_connect($servidor, $usuario, $senha, $db);
  
  //verificacao do banco de dado
  
  if(!$conexao)
  {
	  echo "erro de conexao";
  }
  else
  {
	  
	echo "perfeito <br>";
    echo "conexao realizada com sucesso";	
  }
?>
  
  
