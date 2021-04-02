<!doctype html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <title>Formulário - Cadastramento de Produtos</title>
  </head>
  <body>
    <div style="padding-top: 20px;" class="container">
    <div class="col-md-3 offset-md-3">
        <h1 style="color: rgb(165, 32, 147);">Cadastro de Produtos</h1><br>
        
        
        <form action="cadastro.php" method="POST" onsubmit="alertaProduto();">

        <label>Nome</label><br>
        <input type="text" class="form-control" name="nomeProduto" placeholder="nome do produto"><br>
        
        <label>Preço</label><br>
        <input type="text" class="form-control" name="precoProduto" placeholder="preço do produto"><br>
            
        <label>Quantidade</label><br>
        <input type="text" class="form-control" name="quantidadeProduto" placeholder="quantidade do produto"><br><br>

        <button style="background-color: rgb(165, 32, 147); border-color: rgb(165, 32, 147);" class="btn btn-primary">Cadastrar Produto</button><br><br>

        <a style="background-color: rgb(165, 32, 147); border-color: rgb(165, 32, 147);" class="btn btn-primary" href="gerarcsv.php" onclick="alertaArquivo();">Gerar CSV</a><br><br>

        <a style="background-color: rgb(165, 32, 147); border-color: rgb(165, 32, 147);" class="btn btn-primary" href="tabela.php">Visualisar Tabela</a><br><br>

        </form>
        </div>
    </div>

    <script>
        function alertaProduto(){
          window.alert("Produto cadastrado!");
        }
        function alertaArquivo(){
          window.alert("Arquivo gerado!");
        }
    </script>
    
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>  -->
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
   
  </body>
</html>
