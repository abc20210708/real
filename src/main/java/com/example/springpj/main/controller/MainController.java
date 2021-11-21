package com.example.springpj.main.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/main")
@RequiredArgsConstructor
public class MainController {

    @GetMapping("/index")
    public String startPage() {
        log.info("/main/main GET!!");
        return "main/index";
    }


}