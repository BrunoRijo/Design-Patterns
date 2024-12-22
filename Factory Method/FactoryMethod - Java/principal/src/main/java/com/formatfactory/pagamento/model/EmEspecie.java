package com.formatfactory.pagamento.model;

import org.springframework.stereotype.Component;

@Component("EmEspecie")
public class EmEspecie implements Pagamento{
    @Override
    public void realizaPagamento(Double valor) {
        System.out.println("Pagando " + valor + " usando dinheiro em espécie.");
    }   
}
