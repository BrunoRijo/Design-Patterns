package com.brunorijo.abstractFactory.interfaces;

import org.springframework.stereotype.Component;

/* Essa interface apenas define genericamente a criação da classe de objetos, 
não especificando quais são. */
@Component
public interface AbstractFactoryDatabase {
    Connection creaConnection();
    ExecuteQuery createExecuteQuery();
}
