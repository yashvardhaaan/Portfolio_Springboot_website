package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("name", "Yashvardhan Mahamuni");
        return "home"; // maps to index.html in templates/
    }

    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("bio", "I am a Java Developer passionate about building web applications.");
        return "about"; // maps to about.html
    }
}
