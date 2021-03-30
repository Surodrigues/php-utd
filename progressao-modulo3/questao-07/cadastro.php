<?php

    # receber os dados do formulário
    $dados = $_POST;

    # transformar o array em string
    $dados = implode(" - ", $dados);

    #echo $dados;

    
    #criar um arquivo txt
    $arquivo = fopen("produtos.txt", "a+");   // a+ coloca ponteiro no começo do arquivo

    # escrevendo os dados do produto no arquivo
    fwrite($arquivo, $dados . "\n");

    # fechar o arquivo
    fclose($arquivo);


    
    # redirecionar para a tabela com a listagem
    header("location: tabela.php");
    

?>