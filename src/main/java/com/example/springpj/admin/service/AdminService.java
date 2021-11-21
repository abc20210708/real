package com.example.springpj.admin.service;

import com.example.springpj.admin.domain.Admin;
import com.example.springpj.admin.repository.AdminMapper;
import com.example.springpj.user.domain.User;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Service
@Log4j2
@RequiredArgsConstructor
public class AdminService {

    private final AdminMapper adminMapper;

    //관리자 조회 중간 처리
    public List<Admin> getList() {
        return adminMapper.getList();
    }


    //회원 조회 중간 처리
    public List<User> getUserList() {
        return adminMapper.getUserList();
    }

    //관리자 가입 중간 처리
    public boolean write(Admin admin) {
        return adminMapper.createAdmin(admin);
    }

    //관리자 삭제
    public boolean remove (String id, String pw) {
        return adminMapper.deleteAdmin(id, pw);
    }



}//end class
