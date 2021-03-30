<?php
  $usuario = $_GET;
  $usuario = implode(" ", $usuario);
  $usuarios = fopen("usuarios.txt", "a+");
  fwrite($usuarios, $usuario."\n");
  fclose($usuarios);
  echo "Usuário $usuario listado com sucesso!";
 ?>