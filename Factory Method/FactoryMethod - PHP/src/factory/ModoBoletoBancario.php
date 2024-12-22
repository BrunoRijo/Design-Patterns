<?php

require_once "PagamentoFactory.php";
require_once "BoletoBancario.php";

class ModoBoletoBancario extends PagamentoFactory{

    function cria_modo_pagamento(): Pagamento{
        return new BoletoBancario();
    }

}

?>