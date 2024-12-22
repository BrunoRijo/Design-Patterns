
<?php

require_once "../model/ModoDinheiro.php";
require_once "../model/ModoCredito.php";
require_once "../model/ModoBoletoBancario.php";
require_once "../controller/PagamentoController.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $valor = floatval($_POST['valor']);
    $forma_pagamento = $_POST['forma_pagamento'];

    $modoDePagamento = null;
    if ($forma_pagamento === 'dinheiro') {
        $modoDePagamento = new ModoDinheiro();
    } 
    else if ($forma_pagamento === 'boleto'){
        $modoDePagamento = new ModoBoletoBancario();
    }    
    else if ($forma_pagamento === 'credito'){
        $modoDePagamento = new ModoCredito();
    }
    else {
        die('Forma de pagamento inválida.');
    }

    $controller = new PagamentoController($modoDePagamento);
    $resultado = $controller->processaPagamento($valor);

    echo $resultado;

} else {
    die('Acesso inválido.');
}

?>