package com.example.springpj.admin.repository;

import com.example.springpj.admin.domain.Admin;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminMapper {

    //관리자 목록
    List<Admin> getList();

    //관리자 가입하기
    boolean createAdmin(Admin admin);

    //관리자 삭제
    boolean deleteAdmin(String id, String pw);

    //관리자 정보 수정
    boolean modifyAdmin(String pw, int grade);

}//end class
