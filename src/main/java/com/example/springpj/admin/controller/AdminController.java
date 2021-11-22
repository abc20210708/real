package com.example.springpj.admin.controller;


import com.example.springpj.admin.domain.Admin;
import com.example.springpj.admin.service.AdminService;
import com.example.springpj.request.domain.Request;
import com.example.springpj.user.domain.User;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Log4j2
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {


    private final AdminService adminService;

    //관리자 전체 조회
    @GetMapping("/list")
    public String list(Model model) {
        log.info("관리자 회원 및 AS 조회 GET!");
        //List<Admin> adminList = adminService.getList();
       // model.addAttribute("admin", adminList);
        List<User> csUserList = adminService.getUserList();
        model.addAttribute("cs",csUserList);
        List<Request> requestList = adminService.getRequestList();
        model.addAttribute("req",requestList);
        return "admin/admin";
    }

    //관리자 등록 요청 - 화면
    @GetMapping("/account")
    public String write() {
        log.info("관리자 등록 화면 요청! GET");
        return "admin/account";
    }

    //관리자 등록 요청
    @PostMapping("/account")
    public String write(Admin admin) {
        log.info("관리자 등록 ==> POST!" + admin);
        adminService.write(admin);
        return "redirect:/main/index";
    }

    //관리자 삭제 - 화면
    @GetMapping("/delete")
    public String delete() {
        log.info("관리자 삭제 요청 화면! GET!");
        return "admin/delete";
    }

    //관리자 삭제
    @PostMapping("/delete")
    public String delete(String adminId, String adminPw) {
        log.info("관리자 삭제 요청  ==> POST!!"+ adminId, adminPw);
        adminService.delete(adminId, adminPw);
        return "redirect:/main/index";
    }

    //상세 조회 요청
    //admin/user/content?csNum=3
    @GetMapping("/user/content")
    public String userContent(int csNum, Model model) {
        log.info("회원 상세 목록 조회!! GET!!" + csNum);
        User user = adminService.getUserContent(csNum);
        model.addAttribute("user",user);
        return "admin/user-content";
    }




}//end class
