package com.example.springpj.user.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ModUser {
    private String pw;
    private String address;
    private int postalCode;
    private int phoneNum;
}
