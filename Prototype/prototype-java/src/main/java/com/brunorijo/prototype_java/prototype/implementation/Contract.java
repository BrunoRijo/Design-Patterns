package com.brunorijo.prototype_java.prototype.implementation;

import com.brunorijo.prototype_java.prototype.interfaces.DocumentPrototype;

public class Contract implements DocumentPrototype {

    String clientName;
    Double contractValue;

    public Contract(String ClientName, Double ContractValue){
        this.clientName = ClientName;
        this.contractValue = ContractValue;
    }

    @Override
    public DocumentPrototype Clone() {
        return new Contract(clientName, contractValue);
    }

    @Override
    public String ShowDocumentDetails() {
        return "Contrato - Cliente: "+ clientName +", Valor: R$ " + contractValue;
    }
    
}
