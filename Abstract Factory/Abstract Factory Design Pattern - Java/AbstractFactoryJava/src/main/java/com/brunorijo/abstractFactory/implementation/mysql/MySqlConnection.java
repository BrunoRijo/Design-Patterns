package com.brunorijo.abstractFactory.implementation.mysql;

import com.brunorijo.abstractFactory.interfaces.Connection;

public class MySqlConnection implements Connection {

    @Override
    public void Connect() {
        // Auui seria implementada a conexão apropriada para o mysql
        System.out.println("Conectando com o mysql.");
    }
    
}
