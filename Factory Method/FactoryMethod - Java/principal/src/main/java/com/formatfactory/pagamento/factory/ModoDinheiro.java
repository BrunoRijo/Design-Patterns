package com.formatfactory.pagamento.factory;

import org.springframework.stereotype.Component;

import com.formatfactory.pagamento.model.EmEspecie;
import com.formatfactory.pagamento.model.Pagamento;

@Component("modoDinheiro")
public class ModoDinheiro extends PagamentoFactory {

    @Override
    public Pagamento criaMetodoPagamento() {
        return new EmEspecie();
    }
    
}
