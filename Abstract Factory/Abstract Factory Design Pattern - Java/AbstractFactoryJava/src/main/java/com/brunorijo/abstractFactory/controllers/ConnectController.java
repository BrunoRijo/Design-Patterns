package com.brunorijo.abstractFactory.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.brunorijo.abstractFactory.implementation.mysql.MySqlFactory;
import com.brunorijo.abstractFactory.implementation.postgres.PostgresFactory;
import com.brunorijo.abstractFactory.interfaces.AbstractFactoryDatabase;
import com.brunorijo.abstractFactory.interfaces.Connection;
import com.brunorijo.abstractFactory.interfaces.ExecuteQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@RestController
@RequestMapping("/connect")
public class ConnectController {

    private AbstractFactoryDatabase factory;

    private static AbstractFactoryDatabase getDatabaseFactory(String dbType) {
        switch (dbType) {
            case "mysql":
                return new MySqlFactory();
            case "postgres":
                return new PostgresFactory();
            default:
                throw new IllegalArgumentException("Unsupported database type: " + dbType);
        }
    }
    
    @PostMapping("/{database}")
    public String Connect(@PathVariable String database) {
        factory = getDatabaseFactory(database);

        Connection connection = factory.creaConnection();
        ExecuteQuery executeQuery = factory.createExecuteQuery();

        connection.Connect();
        executeQuery.Execute("Select * from clientes");
        
        return "Sucesso";
    }
    

}
