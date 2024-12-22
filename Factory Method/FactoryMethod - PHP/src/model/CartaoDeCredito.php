<?php

require_once "Pagamento.php";

class CartaoDeCredito implements Pagamento{
    public function realizaPagamento(Float $valor){
        echo "Pagamento de " . number_format($valor, 2, ',', '.') . " realizado utilizando Cartão de Crédito.";
    }
}

?>