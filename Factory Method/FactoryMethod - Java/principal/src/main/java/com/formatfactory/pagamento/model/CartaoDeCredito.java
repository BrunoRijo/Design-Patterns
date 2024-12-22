package com.formatfactory.pagamento.model;

import org.springframework.stereotype.Component;

@Component("CartaoDeCredito")
public class CartaoDeCredito implements Pagamento{
    @Override
    public void realizaPagamento(Double valor) {
        System.out.println("Pagando " + valor + " usando cartão de crédito.");
    }    
}
