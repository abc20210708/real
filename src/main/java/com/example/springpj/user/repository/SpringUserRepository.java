package com.example.springpj.user.repository;

import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("sur")
@RequiredArgsConstructor  //@RequiredArgsConstructor 사용 시 생성자 자동 생성 해줌

public class SpringUserRepository implements UserRepository{

    //JDBC의 중복코드를 처리해주는 템플릿 (실행 안될 시 Spring jdbc starter 깔아야함)
    private final JdbcTemplate jdbcTemplatel;

    @Override
    public List<User> getList() {
        return null;
    }

    @Override
    public boolean createUser(User user) {
        return false;
    }

    @Override
    public boolean deleteUser(String id, String pw) {
        return false;
    }

    @Override
    public boolean modifyUser(ModUser user) {
        return false;
    }
}