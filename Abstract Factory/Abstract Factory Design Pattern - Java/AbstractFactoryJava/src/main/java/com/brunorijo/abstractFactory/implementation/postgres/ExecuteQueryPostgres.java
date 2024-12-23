package com.brunorijo.abstractFactory.implementation.postgres;

import com.brunorijo.abstractFactory.interfaces.ExecuteQuery;

public class ExecuteQueryPostgres implements ExecuteQuery{

    @Override
    public void Execute(String query) {
        System.out.println("Executando a query no Postgres: " + query);
    }
    
}
