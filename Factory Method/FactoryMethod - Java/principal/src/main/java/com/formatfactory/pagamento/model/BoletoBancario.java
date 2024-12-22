package com.formatfactory.pagamento.model;

import org.springframework.stereotype.Component;

@Component("BoletoBancario") 
public class BoletoBancario implements Pagamento {
    @Override
    public void realizaPagamento(Double valor) {
        System.out.println("Pagando " + valor + " usando boleto bancário.");
    }    
}
