package com.example.springpj.request.controller;

import com.example.springpj.request.domain.Request;
import com.example.springpj.request.service.RequestService;
import lombok.extern.log4j.Log4j2;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/request")
public class RequestController {

    private final RequestService requestService;

    public RequestController(RequestService requestService) {
        this.requestService = requestService;
    }

    //AS 신청 요청 - 화면
    @GetMapping("/request")
    public String write() {
        log.info("AS 신청 화면 요청! GET!");
        return "request/request";
    }

    //AS 신청 요청
    @PostMapping("/request")
    public String write(Request request) {
        log.info("AS 신청 요청! ==> POST!");
        requestService.write(request);
        return  "redirect:/main/index";
    }


}//end class
