package com.andro.gymprogressw.gymprogressw.rest;


import com.andro.gymprogressw.gymprogressw.models.users;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class MRestController {

    @GetMapping( "/" )//el metodo saludo actua con ese endpoint
    public String mostrar (Model modelo){



        users obj=new users();
        modelo.addAttribute("users", obj);
        return "index" ;

    }

    

}
