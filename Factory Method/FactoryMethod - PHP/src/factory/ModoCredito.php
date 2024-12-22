<?php

require_once "PagamentoFactory.php";
require_once "CartaoDeCredito.php";

class ModoCredito extends PagamentoFactory{

    function cria_modo_pagamento(): Pagamento{
        return new CartaoDeCredito();
    }

}

?>