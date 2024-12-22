<?php

class PagamentoController{
    private $pagamentoFactory;
    
    public function __construct(PagamentoFactory $pagamentoFactory)
    {
        $this->pagamentoFactory = $pagamentoFactory;
    }

    public function processaPagamento(Float $valor){
        $pagamento = $this->pagamentoFactory->cria_modo_pagamento();
        return $pagamento->realizaPagamento($valor);
    }

}

?>