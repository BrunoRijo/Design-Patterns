package com.brunorijo.abstractFactory.implementation.mysql;

import com.brunorijo.abstractFactory.interfaces.ExecuteQuery;

public class ExecuteQueryMySQL implements ExecuteQuery{

    @Override
    public void Execute(String query) {
        System.out.println("Executando a query: " + query);
    }
    
}
