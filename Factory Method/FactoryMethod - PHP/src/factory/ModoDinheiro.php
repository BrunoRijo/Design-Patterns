<?php

require_once "PagamentoFactory.php";
require_once "Dinheiro.php";

class ModoDinheiro extends PagamentoFactory{

    function cria_modo_pagamento(): Pagamento{
        return new Dinheiro();
    }

}

?>