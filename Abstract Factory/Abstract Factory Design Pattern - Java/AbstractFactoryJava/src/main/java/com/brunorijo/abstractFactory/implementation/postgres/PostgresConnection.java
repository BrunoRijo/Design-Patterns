package com.brunorijo.abstractFactory.implementation.postgres;

import com.brunorijo.abstractFactory.interfaces.Connection;

public class PostgresConnection implements Connection{

    @Override
    public void Connect() {
        // Aqui ficaria a implementação de conexão apropriada para o PostgreSQL
        System.out.println("Executando a conexão com o banco PostgreSQL");
    }
    
}
