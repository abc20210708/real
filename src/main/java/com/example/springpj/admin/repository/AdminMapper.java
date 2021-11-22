package com.example.springpj.admin.repository;


import com.example.springpj.admin.domain.Admin;
import com.example.springpj.request.domain.Request;
import com.example.springpj.user.domain.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface AdminMapper {

    //관리자 가입
    boolean createAdmin(Admin admin);

    //관리자 삭제
    boolean deleteAdmin(String adminId, String adminPw);

    //관리자 목록 전체 조회
    List<Admin> getAdminList();

    //회원 목록 조회하기
    List<User> getUserList();

    //AS 목록 조회하기
    List<Request> getRequestList();

    //회원 목록 상세조회
    User getUserContent(String csId);

    //AS 목록 상세조회
    Request getRequestContent(String asNum);
}//
