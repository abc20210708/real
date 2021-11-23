package com.example.springpj.user.repository;

import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface UserMapper {



    // 회원가입
    boolean createUser(User user);

    // 아이디 중복체크
    int isDuplicate(String targetKeyword);

    // 회원탈퇴
    boolean deleteUser(String id, String pw);

    // 회원 수정하기
    boolean updateUser(ModUser user);

    //단일 회원 정보 조회 기능
    User getUser(String account);



}
