package com.example.springpj.user.repository;

import com.example.springpj.user.domain.User;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface UserMapper {



    // 유저 회원가입
    boolean createUser(User user);


    // 유저 탈퇴
    boolean deleteUser(String id, String pw);

    //회원 상세 조회
    User getContent(String id);


}
