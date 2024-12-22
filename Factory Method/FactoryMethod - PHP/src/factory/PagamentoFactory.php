<?php

abstract class PagamentoFactory {
    abstract function cria_modo_pagamento(): Pagamento;
}

?>