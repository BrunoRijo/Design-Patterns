package com.adapterexample.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.adapterexample.demo.adapter.IProcessaPagamento;
import org.springframework.web.bind.annotation.PostMapping;


@RestController
@RequestMapping("/pagamentoExterno")
public class PagamentoController {
    private final IProcessaPagamento processaPagamento;

    public PagamentoController(IProcessaPagamento pagamento){
        this.processaPagamento = pagamento;
    }

    @PostMapping
    public String processaPagamento(@RequestParam Double value) {
        //Aqui chama o método da interface que define o processo padão do "sistema", sobrescrito pelo adapter
        processaPagamento.processaPagamento(value); 
        return "Pagamento de " + value + " processado com sucesso!";
    }
}
