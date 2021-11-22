package com.example.springpj.user.service;

import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;
import com.example.springpj.user.repository.UserMapper;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Service
@Log4j2
@RequiredArgsConstructor
public class UserService {

    private final UserMapper userMapper;

    //회원 가입 중간 처리
    public boolean write(User user) {
        return userMapper.createUser(user);
    }

    //회원 탈퇴 요청 처리
    public boolean delete(String id, String pw) {
        return userMapper.deleteUser(id, pw);
    }

    //회원 수정 처리
    public boolean update(ModUser user) {
        userMapper.update(user);
        return true;
    }
    

}//end class
