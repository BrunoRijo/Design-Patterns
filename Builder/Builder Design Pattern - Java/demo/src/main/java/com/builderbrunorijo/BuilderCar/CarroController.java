package com.builderbrunorijo.BuilderCar;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/carro")
public class CarroController {

    @GetMapping("/build")
    public String buildCar() {
        CarroBuilder builder = new CarroBuilderImpl();
        Carro car = builder
                .setModelo("SUV")
                .setCor("Red")
                .setAno(2024)
                .build();

        return car.toString();
    }
}
