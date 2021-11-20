package com.example.springpj.user.repository;

import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository("sur")
@RequiredArgsConstructor
public class SpringUserRepository implements UserRepository{

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
    public boolean deleteUser(User user) {
        return false;
    }

    @Override
    public boolean modifyUser(ModUser user) {
        return false;
    }
}
