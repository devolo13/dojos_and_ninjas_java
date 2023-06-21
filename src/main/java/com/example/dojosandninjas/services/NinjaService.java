package com.example.dojosandninjas.services;

import com.example.dojosandninjas.models.Ninja;
import com.example.dojosandninjas.repositories.NinjaRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class NinjaService {
    private final NinjaRepository ninjaRepository;

    public NinjaService(NinjaRepository ninjaRepository){
        this.ninjaRepository = ninjaRepository;
    }
    // returns all the ninjas
    public List<Ninja> allNinja() {
        return ninjaRepository.findAll();
    }
    // DOES THIS WORK?
    public List<Ninja> allNinjaByDojo_id(Long dojo_id) {
        return ninjaRepository.findAllByDojo_Id(dojo_id);
    }
    // creates a ninja
    public Ninja createNinja(Ninja d) {
        return ninjaRepository.save(d);
    }
    // deletes a ninja
    public void deleteNinja(long id) {
        ninjaRepository.deleteById(id);
        return;
    }
    // retrieves a ninja
    public Ninja findninja(Long id) {
        Optional<Ninja> optionalNinja = ninjaRepository.findById(id);
        if(optionalNinja.isPresent()) {
            return optionalNinja.get();
        } else {
            return null;
        }
    }
}
