package com.example.springpj.user.service;

import com.example.springpj.user.domain.User;
import com.example.springpj.user.repository.UserMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j2
@RequiredArgsConstructor
public class UserService {

    private final UserMapper userMapper;

    //회원 조회 중간 처리
    public List<User> getList() {
        return userMapper.getList();
    }

    //회원 가입 중간 처리
    public boolean write(User user) {
        return userMapper.createUser(user);
    }

}
