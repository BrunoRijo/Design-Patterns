<?php

require_once "Pagamento.php";

class BoletoBancario implements Pagamento{
    public function realizaPagamento(Float $valor){
        echo "Pagamento de " . number_format($valor, 2, ',', '.') . " realizado utilizando boleto bancário.";
    }
}

?>