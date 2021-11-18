<?php

  //credenciais
  
  $servidor="localhost";
  $usuario="root";
  $senha="";
  $db="informatica";
  
  //Update
  
  //conexao
  $conn = mysqli_connect($servidor, $usuario, $senha, $db);
 
  
  $resultado = "UPDATE alunos SET nome='joelson',alteracao=NOW() WHERE curso_id = 1
  VALUE('1')";

  
  //Query
  $result_listar = mysqli_query($conn, $resultado);
  
  //verificacao de insercao
  if(mysqli_affected_rows($conn)){
	  
	echo"alterado com sucesso <br>";
    echo"ID:".mysqli_affected_rows($conn);	
  }else{
	echo"erro de insercao de registro";
   }
