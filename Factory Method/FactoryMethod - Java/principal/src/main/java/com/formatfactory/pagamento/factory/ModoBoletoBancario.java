package com.formatfactory.pagamento.factory;

import org.springframework.stereotype.Component;
import com.formatfactory.pagamento.model.BoletoBancario;
import com.formatfactory.pagamento.model.Pagamento;

@Component("modoBoletoBancario")
public class ModoBoletoBancario extends PagamentoFactory{

    @Override
    public Pagamento criaMetodoPagamento() {
        return new BoletoBancario();
    }
    
}
