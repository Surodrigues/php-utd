/*
6 - Calcule a média de 10 números digitados ou criados. (use linguagem PHP) 

<?php
    $n0 = rand(1,9);
    $n1 = rand(1,9);
    $n2 = rand(1,9);
    $n3 = rand(1,9);
    $n4 = rand(1,9);
    $n5 = rand(1,9);
    $n6 = rand(1,9);
    $n7 = rand(1,9);
    $n8 = rand(1,9);
    $n9 = rand(1,9);
    $media = ($n0+$n1+$n2+$n3+$n4+$n5+$n6+$n7+$n8+$n9)/10;

    echo "Os 10 números são: $n1, $n2, $n3, $n4, $n5, $n6, $n7, $n8 e $n9";
    echo "<br/>A média é $media."
?>

7 - Digite 5 números e verifique qual é o maior. (use linguagem PHP) 

<?php
    $n0 = rand(1,9);
    $n1 = rand(1,9);
    $n2 = rand(1,9);
    $n3 = rand(1,9);
    $n4 = rand(1,9);

    echo "Os números são: $n0, $n1, $n2, $n3 e $n4.<br/>";

    $numeros = array($n0, $n1, $n2, $n3, $n4);
    sort($numeros);

    echo "O maior número é $numeros[4]";
?>

8 - Digite várias idades. Exiba quantas pessoas são  maior  de  idade  (18  anos)  e  quantas  são menores. (use Linguagem PHP) 

<?php
    $idade0 = rand(1,100);
    $idade1 = rand(1,100);
    $idade2 = rand(1,100);
    $idade3 = rand(1,100);
    $idade4 = rand(1,100);
    $idade5 = rand(1,100);
    $idade6 = rand(1,100);
    $idade7 = rand(1,100);
    $idade8 = rand(1,100);
    $idade9 = rand(1,100);

    $idades = array($idade0, $idade1, $idade2, $idade3, $idade4, $idade5, $idade6, $idade7, $idade8, $idade9);

    echo "As idades são: ";
    foreach ($idades as $key => $value) {
        print_r($value);
        echo " ";
    }
    echo ".</br>";

    $menores = 0;
    $maiores = 0;

    foreach ($idades as $key => $value) {
        if ($value <18) {
            $menores++;
        } else {
            $maiores++;
        }
        
    }
    echo "São $menores menor(es) e $maiores maior(es) de idade.";


?>

9 - Digite vários nomes. Exiba na tela todos os nomes digitados, porém de maneira invertida (do último para o primeiro, usando linguagem PHP). 

<?php

    $nomes = array('Projota','Poca', 'João', 'Gilberto', 'Juliette', 'Camila', 'Sarah', 'Arthur', 'Caio', 'Fiuk');

    $i = 10;

    echo "As nomes digitados em ordem invertida são: ";

    while ($i >= 0) {
        echo $nomes[$i];
        $i--;
        echo " ";
    }
    echo ".";

?>

10 - Digite uma data. Exiba separadamente o dia, o mês e o ano. (use linguagem PHP) 

<?php

    $qdia = getdate();

    echo "Hoje é dia $qdia[mday] do mês de $qdia[month] do ano $qdia[year]." ;

    // não consegui colocar o nome do mẽs em português.

?>
*/