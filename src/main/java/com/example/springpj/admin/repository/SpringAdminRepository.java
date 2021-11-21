package com.example.springpj.admin.repository;


import com.example.springpj.user.domain.User;
import com.example.springpj.user.dto.ModUser;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("adm")
@RequiredArgsConstructor
public class SpringAdminRepository implements AdminRepository {


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
}//end class
