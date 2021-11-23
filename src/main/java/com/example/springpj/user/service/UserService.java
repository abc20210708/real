package com.example.springpj.user.service;

import com.example.springpj.user.domain.LoginFlag;
import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;
import com.example.springpj.user.repository.UserMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import static com.example.springpj.user.domain.LoginFlag.*;

@Service
@Log4j2
@RequiredArgsConstructor
public class UserService {

    private final UserMapper userMapper;

    //아이디 중복확인 중간처리
    public boolean isDuplicate(String checkId) {
        return userMapper.isDuplicate(checkId) == 1;
    }

    //로그인 중간처리
    public LoginFlag login(String account, String password) {
        User user = userMapper.getUser(account);
        if (user != null) {
            String dbPw = user.getPw();
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            return encoder.matches(password, dbPw) ? SUCCESS : NO_PW;
        } else {
            return NO_ID;
        }
    }

    //회원 가입 중간 처리
    public void write(User user) {

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String encodedPw = encoder.encode(user.getPw());
        user.setPw(encodedPw);

        userMapper.createUser(user);
    }

    //회원 탈퇴 요청 처리
    public boolean delete(String id, String pw) {
        return userMapper.deleteUser(id, pw);
    }

    //회원 수정 처리
    public boolean updateUser(ModUser user) {
        userMapper.updateUser(user);
        return true;
    }

    //회원 정보 조회하기
    public User getUser(String account) {
       return  userMapper.getUser(account);
    }
    

}//end class
