<?php

  //credenciais
  
  $servidor="localhost";
  $usuario="root";
  $senha="";
  $db="informatica";
  
  
  
  //conexao
  $conn = mysqli_connect($servidor, $usuario, $senha, $db);
  
  $nome = "joelson";
  
  //insert
  $resultado = "INSERT INTO alunos(nome, ano_id, curso_id, periodo_id)
  VALUE('$nome','3','2','1')";

  
  //Query
  $result_listar = mysqli_query($conn, $resultado);
  
  //verificacao de insercao
  if(mysqli_insert_id($conn)){
	  
	echo"perfeito <br>";
    echo"regristro inserido com sucesso".mysqli_insert_id($conn);	
  }else{
	echo"erro de insercao de registro";
   }
  
