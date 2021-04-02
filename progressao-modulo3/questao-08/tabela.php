<?php

    # abre arquivo para leitura("r")
    $handle = fopen("produtos.csv", "r");

    if ($handle) { 

        # Ler cabecalho do arquivo
        $cabecalho = fgetcsv($handle, 0, ",");
        
?>

<!doctype html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <title>Tabela de Produtos</title>
  </head>
  <body>
    <div style="padding-top: 20px;" class="container">
        <div class="col-md-8 offset-md-2">
            <h1 style="color: rgb(165, 32, 147);">Cadastro</h1><br>


            <table class="table">
                <thead>
                    <th><?=$cabecalho[0]?></th>
                    <th><?=$cabecalho[1]?></th>
                    <th><?=$cabecalho[2]?></th>
                </thead>

                <tbody>
                    <?php
                    # Enquanto nao terminar o arquivo
                    while (!feof($handle)) { 
                
                        # Ler uma linha do arquivo
                        $linha = fgetcsv($handle, 0, ",");
                        if (!$linha) {
                            continue;
                                        
                        }
                        # Montar registro com valores indexados pelo cabecalho
                        $registro = array_combine($cabecalho, $linha);
                    
                    
                    ?>
                    <tr>
                        <td><?=$registro['Produto']?></td>
                        <td><?=$registro['Preço']?></td>
                        <td><?=$registro['Quantidade']?></td>
                    </tr>

                    <?php } 
}
fclose($handle)?>
                </tbody>

            </table>

                
            <a href="formulario.php" style="background-color: rgb(165, 32, 147); border-color: rgb(165, 32, 147);" class="btn btn-primary">Voltar</a><br><br>

            
            
        </div>
    </div>
  
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>  -->
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
   
  </body>
</html>