package com.example.springpj.admin.controller;

import com.example.springpj.admin.domain.Admin;
import com.example.springpj.admin.service.AdminService;
import com.example.springpj.user.domain.User;
import lombok.Getter;
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
public class AdminController {

    private final AdminService adminService;

    public AdminController(AdminService adminService) {
        this.adminService = adminService;
    }

    //관리자 전체 조회
    @GetMapping("/list")
    public String list(Model model) {
        log.info("관리자 전체 조회 GET!");
        List<Admin> adminList = adminService.getList();
        model.addAttribute("admin",adminList);
        return "admin/list";
    }

    //관리자 가입 요청 - 화면
    @GetMapping("/account")
    public String write() {
        log.info("관리자 가입 화면 요청! GET!");
        return "admin/account";
    }

    //관리자가 회원을 조회
    @GetMapping("/user-list")
    public String userList(Model model) {
        log.info ("회원 전체 조회 GET!");
        List<User> csUserList = adminService.getUserList();
        model.addAttribute("cs",csUserList);
        return "admin/user-list";
    }


    //관리자 가입 요청 - 화면
    @PostMapping("/account")
    public String write(Admin admin) {
        log.info("관리자 가입 요청 ==> POST!" + admin);
        adminService.write(admin);
        return "redirect:/main/index";
    }

    //삭제 요청 처리
    @GetMapping("/delete")
    public String delete() {
        log.info("관리자 계정 삭제!! 화면요청!!");
        return "admin/delete";
    }

    //삭제 요청 처리
    @PostMapping("/delete")
    public String delete(String id, String pw) {
        log.info("관리자 계정 삭제!! => POST" + id, pw);
        adminService.remove(id, pw);
        return "redirect:/main/index";
    }


}//end class
