package com.example.okkyclone;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {

    @GetMapping("/test")
    public String test(Model model) {
        System.out.println("들어왔다개");
        model.addAttribute("data1", "bomi");
        model.addAttribute("data2", "ohgu");
        return "index";
    }
}
