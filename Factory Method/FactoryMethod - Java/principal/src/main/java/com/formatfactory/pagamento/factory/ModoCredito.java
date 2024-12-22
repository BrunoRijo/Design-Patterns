package com.formatfactory.pagamento.factory;

import org.springframework.stereotype.Component;
import com.formatfactory.pagamento.model.CartaoDeCredito;
import com.formatfactory.pagamento.model.Pagamento;

@Component("modoCredito")
public class ModoCredito extends PagamentoFactory {

    @Override
    public Pagamento criaMetodoPagamento() {
        return new CartaoDeCredito();
    }
    
}


