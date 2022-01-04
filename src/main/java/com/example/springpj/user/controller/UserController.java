package com.example.springpj.user.controller;

import com.example.springpj.user.domain.LoginFlag;
import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;
import com.example.springpj.user.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;


@Controller
@Log4j2
@RequestMapping("/user")
@RequiredArgsConstructor
public class UserController {

   private final UserService userService;


    //회원 가입 요청 - 화면
    @GetMapping("/account")
    public String write() {
        log.info("회원 가입 화면 요청! GET!");
        return "user/account";
    }

    //아이디 중복확인 비동기 통신요청
    @GetMapping("/check")
    @ResponseBody
    public boolean check(String checkId) {
        log.info("/check 비동기 요청 GET!" + checkId);
        return userService.isDuplicate(checkId);
    }

    //회원 가입 요청
    @PostMapping("/account")
    public String write(User user) {
        log.info("회원 가입 요청! ==> POST!" + user);
        userService.write(user);
        return "redirect:/main/index";
    }

    //회원 탈퇴 - 화면 요청
    @GetMapping("/delete")
    public String delete() {
        log.info("회원 탈퇴 요청! GET!");
        return "user/delete";
    }

    //회원 탈퇴
    @PostMapping("/delete")
    public String delete(String id, String pw) {
        log.info("회원 탈퇴 요청 ==> POST" + id, pw);
        userService.delete(id, pw);
        return "redirect:/main/index";
    }

    //로그인 양식 요청
    @GetMapping("/login")
    public String loginUser() {
        return "login/login-user";
    }

    //로그인 검증
    @PostMapping("/loginCheck")
    public String loginCheck(String account, String password, Model model, HttpSession session) {
        log.info("/loginCheck POST! - ID : " + account + ", PW : " + password);
        LoginFlag flag = userService.login(account, password);
        log.info(flag);
        model.addAttribute("msg", flag);

        //로그인 성공시
        if (flag == LoginFlag.SUCCESS) {
            session.setAttribute("loginUser", userService.getUser(account));
            return "redirect:/main/index";
        }
        return "login/login-user";
    }

    //로그아웃
    @GetMapping("/sign-out")
    public String logout(HttpSession session) {
        User user = (User) session.getAttribute("loginUser");
        if (user != null) {
            session.removeAttribute("loginUser");
            session.invalidate(); // 세션 무효화
        }
        return "redirect:/main/index";
    }

    //회원의 정보 상세 보기
    @GetMapping("/modify")
    public String content(Model model, String account) {
        User user5 = userService.getUser(account);
        model.addAttribute("u",user5);
        log.info("수정 화면 요청!");
        log.info(user5);

        return "user/modify";
    }

    @PostMapping("/modify")
    public String content(Model model, ModUser user, String account) {
        User user5 = userService.getUser(account);
        model.addAttribute("u",user5);
        log.info("수정 요청!");
        userService.updateUser(user);
        log.info(user);
        return "redirect:/user/modify";
    }


}//end class
