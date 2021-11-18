<?php

  //credenciais
  
  $servidor="localhost";
  $usuario="root";
  $senha="";
  $db="informatica";
  
  //delete
  
  //conexao
  $conn = mysqli_connect($servidor, $usuario, $senha, $db);
 
  
  $resultado = "	DELETE FROM alunos WHERE id_aluno = 5";

  
  //Query
  $result_listar = mysqli_query($conn, $resultado);
  
  //verificacao de insercao
  if(mysqli_affected_rows($conn)){
	  
	echo"eliminado com sucesso <br>";
    echo"ID:".mysqli_affected_rows($conn);	
  }else{
	echo"erro de insercao de registro";
   }
  