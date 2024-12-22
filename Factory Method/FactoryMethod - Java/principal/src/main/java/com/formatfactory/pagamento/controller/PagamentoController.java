package com.formatfactory.pagamento.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.formatfactory.pagamento.factory.PagamentoFactory;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/pagamento")
public class PagamentoController {

    @Autowired
    @Qualifier("modoCredito")
    private PagamentoFactory modoCredito;

    @Autowired
    @Qualifier("modoBoletoBancario")
    private PagamentoFactory modoBoletoBancario;

    @Autowired
    @Qualifier("modoDinheiro")
    private PagamentoFactory modoDinheiro;

    @PostMapping("/{modo}")
    public String processPayment(@PathVariable String modo, @RequestParam double valor) {
        System.out.println("Requisição recebida: modo = " + modo + ", valor = " + valor);
        PagamentoFactory pagamento;

        switch (modo.toLowerCase()) {
            case "credito":
                pagamento = modoCredito;
                break;
            case "boleto":
                pagamento = modoBoletoBancario;
                break;
            case "dinheiro":
                pagamento = modoDinheiro;
                break;
            default:
                throw new IllegalArgumentException("Método de pagamento não suportado!");
        }

        pagamento.processaPagamento(valor);
        return "Pagamento processado com sucesso!";
    }
}
