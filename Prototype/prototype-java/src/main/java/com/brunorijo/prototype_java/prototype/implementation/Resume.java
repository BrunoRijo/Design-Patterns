package com.brunorijo.prototype_java.prototype.implementation;

import com.brunorijo.prototype_java.prototype.interfaces.DocumentPrototype;

public class Resume implements DocumentPrototype {

    String name;
    Double experienceYears;

    public Resume(String Name, Double ExperienceYears){
        this.name = Name;
        this.experienceYears = ExperienceYears;
    }

    @Override
    public DocumentPrototype Clone() {
        return new Resume(name, experienceYears);    
    }

    @Override
    public String ShowDocumentDetails() {
        return "Curriculo - Nome: "+ name +", Anos de experiencia: " + experienceYears;
    }
    
}