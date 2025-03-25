package com.andro.gymprogressw.gymprogressw.rest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.beans.factory.annotation.Autowired;

import com.andro.gymprogressw.gymprogressw.models.users;
import com.andro.gymprogressw.gymprogressw.jdbc.UsersRepository;

@Controller //para ser reconocido como controller
public class UsersController {

    @Autowired
    UsersRepository repositoriousuario;





    @PostMapping("/registrar")
    public String registrar(@ModelAttribute("users") users usuario, Model modelo) {//model atributties para poder mapear


/*
        modelo.addAttribute("b_id", usuario.getId());
        modelo.addAttribute("b_name", usuario.getName());
        modelo.addAttribute("b_nickname", usuario.getNickname());
        modelo.addAttribute("b_porpuse", usuario.getPorpuse());
        modelo.addAttribute("b_password", usuario.getPassword());
        modelo.addAttribute("b_email", usuario.getEmail());
        modelo.addAttribute("b_age", usuario.getAge());
        modelo.addAttribute("b_weight", usuario.getWeight());
        modelo.addAttribute("b_height", usuario.getHeight());*/

        repositoriousuario.insertar(usuario);


        return "index";



    }


}
