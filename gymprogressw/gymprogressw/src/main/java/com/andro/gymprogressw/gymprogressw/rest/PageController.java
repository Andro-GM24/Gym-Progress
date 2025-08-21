package com.andro.gymprogressw.gymprogressw.rest;

import com.andro.gymprogressw.gymprogressw.models.users;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class PageController {

    @GetMapping("/Login")
    public String mostrarPaginaBienvenida(Model model) {
        model.addAttribute("users", new users());
        return "Login"; // también debe estar en templates
    }
}
