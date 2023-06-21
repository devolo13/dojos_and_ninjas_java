package com.example.dojosandninjas.services;

import com.example.dojosandninjas.models.Dojo;
import com.example.dojosandninjas.repositories.DojoRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DojoService {
    private final DojoRepository dojoRepository;

    public DojoService(DojoRepository dojoRepository){
        this.dojoRepository = dojoRepository;
    }
    // returns all the dojos
    public List<Dojo> allDojo() {
        return dojoRepository.findAll();
    }
    // creates a dojo
    public Dojo createDojo(Dojo d) {
        return dojoRepository.save(d);
    }
    // deletes a dojo
    public void deleteDojo(long id) {
        dojoRepository.deleteById(id);
        return;
    }
    // retrieves a dojo
    public Dojo finddojo(Long id) {
        Optional<Dojo> optionalDojo = dojoRepository.findById(id);
        if(optionalDojo.isPresent()) {
            return optionalDojo.get();
        } else {
            return null;
        }
    }
}
