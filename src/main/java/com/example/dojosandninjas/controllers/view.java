package com.example.dojosandninjas.controllers;

import com.example.dojosandninjas.models.Dojo;
import com.example.dojosandninjas.models.Ninja;
import com.example.dojosandninjas.services.DojoService;
import com.example.dojosandninjas.services.NinjaService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class view {
    @Autowired
    DojoService dojoService;
    @Autowired
    NinjaService ninjaService;

    @GetMapping("/dojos/new")
    public String newDojo(Model model, @ModelAttribute("dojo") Dojo dojo){
        return "newDojo.jsp";
    }

    @PostMapping("/dojos/save")
    public String saveDojo(@ModelAttribute("dojo") Dojo dojo){
        dojoService.createDojo(dojo);
        return "redirect:/dojos/new";
    }

    @GetMapping("/dojos/{dojo_id}")
    public String viewDojo(Model model, @PathVariable("dojo_id") Long dojo_id){
        Dojo dojo = dojoService.finddojo(dojo_id);
        model.addAttribute("dojo", dojo);
        List<Ninja> ninjas = ninjaService.allNinjaByDojo_id(dojo_id);
        model.addAttribute("ninjas", ninjas);
        return "viewDojo.jsp";
    }

    @GetMapping("/ninjas/new")
    public String newNinja(Model model, @ModelAttribute("ninja") Ninja ninja){
        List<Dojo> dojos = dojoService.allDojo();
        model.addAttribute("dojos", dojos);
        return "newNinja.jsp";
    }

    @PostMapping("/ninjas/save")
    public String saveNinja(@ModelAttribute("ninja") Ninja ninja){
        ninjaService.createNinja(ninja);
        return "redirect:/ninjas/new";
    }
}
