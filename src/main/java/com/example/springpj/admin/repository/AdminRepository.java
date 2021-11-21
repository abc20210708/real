package com.example.springpj.admin.repository;

import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;

import java.util.List;

public interface AdminRepository {


    // 유저 목록 받아오기
    List<User> getList();

    // 관리자 등록
    boolean createUser(User user);

    // 관리자 삭제
    boolean deleteUser(String id, String pw);

    // 관리자 정보 수정
    boolean modifyUser(ModUser user);
}
