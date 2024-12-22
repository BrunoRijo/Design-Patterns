package com.singletonbrunorijo.Singleton;

import org.springframework.stereotype.Component;

@Component
public class SingletonLogger {

    //Por padrão todos os beans do spring são singleton, 
    //portanto não é necessário o restante da implementação

    public void RegistraLog(String msg){
        System.out.println("Log: " + msg);
    }
    
}