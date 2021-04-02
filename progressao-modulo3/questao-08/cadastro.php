<?php
    
    # receber os dados do formulário
    $dados = $_POST; //não coloca o nome do campo

    
    # transformar o array em string
    $dados = implode(" - ", $dados);

   
    #criar um arquivo txt
    $arquivo = fopen("produtos.txt", "a+");   // a+ Abre para leitura e escrita; coloca o ponteiro do arquivo no final do arquivo. Se o arquivo não existir, tenta criá-lo. 

    # escrevendo os dados do produto no arquivo
    fwrite($arquivo, $dados . "\n");

    # fechar o arquivo
    fclose($arquivo);


    
    # redirecionar para a tabela com a listagem
    header("location: formulario.php");
    

?>