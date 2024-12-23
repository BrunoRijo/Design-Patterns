package com.brunorijo.abstractFactory.implementation.postgres;

import com.brunorijo.abstractFactory.interfaces.AbstractFactoryDatabase;
import com.brunorijo.abstractFactory.interfaces.Connection;
import com.brunorijo.abstractFactory.interfaces.ExecuteQuery;

public class PostgresFactory implements AbstractFactoryDatabase{

    @Override
    public Connection creaConnection() {
        return new PostgresConnection();
    }

    @Override
    public ExecuteQuery createExecuteQuery() {
        return new ExecuteQueryPostgres();
    }
    
}
