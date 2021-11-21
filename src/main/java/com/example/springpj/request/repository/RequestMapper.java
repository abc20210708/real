package com.example.springpj.request.repository;

import com.example.springpj.request.domain.Request;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface RequestMapper {

    //AS 신청하기 - 회원
    boolean insertRequest(Request request);

    //AS 목록 조회 - 관리자
    List<Request> getList();



}
