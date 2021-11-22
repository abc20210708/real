package com.example.springpj.admin.service;

import com.example.springpj.admin.domain.Admin;
import com.example.springpj.admin.repository.AdminMapper;
import com.example.springpj.request.domain.Request;
import com.example.springpj.user.domain.User;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Service
@Log4j2
@RequiredArgsConstructor
public class AdminService {

    private final AdminMapper adminMapper;

    //관리자 조회 중간 처리
    public List<Admin> getList() {
        log.info("관리자 조회 중간처리!");
        return adminMapper.getAdminList();
    }

    //관리자 등록 중간처리
    public boolean write(Admin admin) {
        log.info("관리자 등록 중간처리");
        return adminMapper.createAdmin(admin);
    }

    //관리자 삭제 중간처리
    public boolean delete(String id, String pw) {
        log.info("관리자 삭제 중간처리!");
        return adminMapper.deleteAdmin(id, pw);
    }


    //회원 조회 중간 처리
    public List<User> getUserList() {
        return adminMapper.getUserList();
    }

    //AS 조회 중간 처리
    public List<Request> getRequestList() {
        log.info("AS 조회 중간 처리");
        return adminMapper.getRequestList();
    }

}//end class
