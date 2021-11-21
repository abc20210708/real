package com.example.springpj.admin.repository;

import com.example.springpj.admin.domain.Admin;
import com.example.springpj.user.domain.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminMapper {

    //관리자 목록
    List<Admin> getList();

    //회원 목록 조회하기
    List<User> getUserList();

    //관리자 등록하기
    boolean createAdmin(Admin admin);

    //관리자 삭제
    boolean deleteAdmin(String id, String pw);


}//end class
