package com.builderbrunorijo.BuilderCar;

public class CarroBuilderImpl implements CarroBuilder {
    private final Carro carro;

    public CarroBuilderImpl() {
        this.carro = new Carro();
    }

    @Override
    public Carro build() {
        return carro;
    }


    @Override
    public CarroBuilder setModelo(String modelo) {
        carro.setModel(modelo);
        return this;
    }

    @Override
    public CarroBuilder setCor(String cor) {
        carro.setCor(cor);
        return this;
    }

    @Override
    public CarroBuilder setAno(int ano) {
        carro.setAno(ano);
        return this;
    }
}
