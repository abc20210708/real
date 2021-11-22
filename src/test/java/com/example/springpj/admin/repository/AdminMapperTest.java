package com.example.springpj.admin.repository;

import com.example.springpj.admin.domain.Admin;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.jupiter.api.Assertions.*;

class AdminMapperTest {

    @Autowired
    AdminMapper adminMapper;
    
    @Test
    void createAdmin() {
        Admin testAdmin = new Admin("ll","000",3);
        System.out.println("testAdmin = " + testAdmin);
    }

    @Test
    void deleteAdmin() {
    }

    @Test
    void getAdminList() {
    }
}