package com.example.springpj.admin.controller;

import com.example.springpj.admin.domain.Admin;
import com.example.springpj.admin.service.AdminService;
import com.example.springpj.user.domain.User;
import lombok.Getter;
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
        return "redirect:/main/index";
    }

    //관리자 삭제 - 화면
    @GetMapping("/delete")
    public String delete() {
        log.info("관리자 삭제 요청 화면! GET!");
        return "admin/delete";
    }

    //관리자 삭제 - 화면
    @PostMapping("/delete")
    public String delete(String id, String pw) {
        log.info("관리자 삭제 요청  ==> POST!!"+ id, pw);
        return "redirect:/main/index";
    }


    //관리자 전체 조회
    @GetMapping("/list")
    public String list(Model model) {
        log.info("관리자 전체 조회 GET!");
        List<Admin> adminList = adminService.getList();
        model.addAttribute("admin",adminList);
        return "admin/list";
    }

    //관리자가 회원을 조회
    @GetMapping("/user-list")
    public String userList(Model model) {
        log.info ("회원 전체 조회 GET!");
        List<User> csUserList = adminService.getUserList();
        model.addAttribute("cs",csUserList);
        return "admin/user-list";
    }



}//end class
