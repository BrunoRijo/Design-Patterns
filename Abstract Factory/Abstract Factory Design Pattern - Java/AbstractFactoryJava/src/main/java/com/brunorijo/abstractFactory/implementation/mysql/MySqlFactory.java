package com.brunorijo.abstractFactory.implementation.mysql;

import com.brunorijo.abstractFactory.interfaces.AbstractFactoryDatabase;
import com.brunorijo.abstractFactory.interfaces.Connection;
import com.brunorijo.abstractFactory.interfaces.ExecuteQuery;

public class MySqlFactory implements AbstractFactoryDatabase {

    @Override
    public Connection creaConnection() {
        return new MySqlConnection();
    }

    @Override
    public ExecuteQuery createExecuteQuery() {
        return new ExecuteQueryMySQL();
    }
    
}
