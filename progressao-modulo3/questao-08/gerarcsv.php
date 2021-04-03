<?php

    # lê o arquivo para uma variável
    $produtos = file("produtos.txt");

    
    # "w+" - Abre para leitura e escrita; coloca o ponteiro do arquivo no começo do arquivo e reduz o comprimento do arquivo para zero. Se o arquivo não existir, tenta criá-lo. 
    $arquivo = fopen("produtos.csv", "w+");

    # criar cabeçalho
    $header = ["Produto", "Preço", "Quantidade"];


    # escrever cabeçalho no csv
    fputcsv($arquivo, $header);

    # escrever dados
    foreach ($produtos as $key => $value) {
        $dados = explode(" - ", $value);
        fputcsv($arquivo, $dados);        
    }


    # fechar csv
    fclose($arquivo);

    

    # redirecionar para a tabela com a listagem
    header("location: formulario.php");


    
?>