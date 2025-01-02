package com.adapterexample.demo.adapter;

import org.springframework.stereotype.Component;

@Component
public class AdaptaPapagamento implements IProcessaPagamento{
    private final ServicoDePagamentoExterno servicoExterno;

    public AdaptaPapagamento(){
        this.servicoExterno = new ServicoDePagamentoExterno();
    }

    @Override
    public void processaPagamento(Double value) {
        //Adapta a chamada para o serviço externo
        servicoExterno.realizaPagamento(value);
    }
    
}
