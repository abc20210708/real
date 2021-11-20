package com.example.springpj.user.repository;

import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {

    // 유저 목록 받아오기
    List<User> getList();

    // 유저 회원가입
    boolean createUser(User user);

    //회원 상세 조회
    User getContent(String id);

    // 유저 탈퇴
    boolean deleteUser(String id, String pw);

    // 유저 정보 수정
    boolean modifyUser(ModUser user);


}
