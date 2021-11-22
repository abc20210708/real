package com.example.springpj.admin.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.ResultSet;
import java.sql.SQLException;

@Getter @Setter
@ToString
@NoArgsConstructor
public class Admin {

    private String adminId;
    private String adminPw;
    private int grade;

    public Admin(String adminId, String adminPw, int grade) {
        this.adminId = adminId;
        this.adminPw = adminPw;
        this.grade = grade;
    }

    public Admin(ResultSet rs) throws SQLException {
        this.adminId = rs.getString("admin_id");
        this.adminPw = rs.getString("admin_pw");
        this.grade = rs.getInt("grade");
    }

}//end class
