package com.formatfactory.pagamento.factory;

import com.formatfactory.pagamento.model.Pagamento;

public abstract class PagamentoFactory{

    public abstract Pagamento criaMetodoPagamento();
    
    public void processaPagamento(double valor){
        Pagamento pagamento = criaMetodoPagamento();
        pagamento.realizaPagamento(valor);
    }
}