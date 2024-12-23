package com.brunorijo.prototype_java.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.brunorijo.prototype_java.prototype.implementation.Contract;
import com.brunorijo.prototype_java.prototype.implementation.Resume;
import com.brunorijo.prototype_java.prototype.interfaces.DocumentPrototype;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RestController
@RequestMapping("/document")
public class DocumentoController {

    DocumentPrototype curriculo;
    DocumentPrototype contrato;
    DocumentPrototype curriculo_original;
    DocumentPrototype contrato_original;

    //Cria os arquivos originais
    public DocumentoController(){
        curriculo_original = new Resume("Bruno Rijo", 5.0);
        contrato_original = new Contract("Bruno", 900000099.99);  
    }  

    @GetMapping("/curriculo")
    public String GetCurriculo() {
        curriculo = curriculo_original.Clone();

        return curriculo.ShowDocumentDetails();
    }

    @GetMapping("/contract")
    public String GetContrato() {
        contrato = contrato_original.Clone();

        return contrato.ShowDocumentDetails();
    }    

}
