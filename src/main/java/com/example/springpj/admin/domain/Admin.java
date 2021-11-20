package com.example.springpj.admin.domain;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.ResultSet;
import java.sql.SQLException;

@Getter @Setter @ToString
@NoArgsConstructor
public class Admin {

    private String id;
    private String pw;
    private int grade;

    public Admin(String id, String pw, int grade) {
        this.id = id;
        this.pw = pw;
        this.grade = grade;
    }

    public Admin(ResultSet rs) throws SQLException {
        this.id = rs.getString("admin_id");
        this.pw = rs.getString("admin_pw");
        this.grade = rs.getInt("grade");
    }


}//end class
