package com.builderbrunorijo.BuilderCar;

public interface CarroBuilder {
    CarroBuilder setModelo(String modelo);
    CarroBuilder setCor(String cor);
    CarroBuilder setAno(int ano);
    Carro build();
}
