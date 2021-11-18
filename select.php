<?php

  //credenciais
  
  $servidor="localhost";
  $usuario="root";
  $senha="";
  $db="escola";
  
  //conexao
 $conn=mysqli_connect($servidor, $usuario, $senha, $db);
   //Select
  $listar = "SELECT * FROM alunos";
  
  //Query
  $result_listar = mysqli_query($conn, $listar);
  
  while($mostrar = mysqli_fetch_assoc($result_listar))
  {
	  echo "nome:".$mostrar['nome']."<br>";
	  echo "ano_id :".$mostrar['ano_id']."<br>";
	  echo "curso_id  :".$mostrar['curso_id']."<br>"; 
	  echo "periodo_id :".$mostrar['periodo_id']."<br>";
	  echo "criado :".$mostrar['criado']."<br>";
  }
  