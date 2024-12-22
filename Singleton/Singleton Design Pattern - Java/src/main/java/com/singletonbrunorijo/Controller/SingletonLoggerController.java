package com.singletonbrunorijo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.singletonbrunorijo.Singleton.SingletonLogger;

@RestController
public class SingletonLoggerController {

    @Autowired
    private SingletonLogger logger;

    //Exemplo de chamada em um endpoint, só para exemplificação.
    @GetMapping("/singleton")
    public String useSingleton() {
        logger.RegistraLog("Usando o Singleton como Bean no Spring Boot!");
        return "Mensagem logada com sucesso!";
    }

}
