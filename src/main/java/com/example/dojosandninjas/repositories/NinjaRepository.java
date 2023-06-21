package com.example.dojosandninjas.repositories;

import com.example.dojosandninjas.models.Ninja;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long> {
//    NO CLUE IF FINDALLBYDOJO EXISTS OR IF IT'S THE CORRECT WAY TO DO THIS
    List<Ninja> findAll();
    List<Ninja> findAllByDojo_Id(Long dojo_id);
}
