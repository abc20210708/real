package com.example.springpj.request.service;


import com.example.springpj.request.domain.Request;
import com.example.springpj.request.repository.RequestMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j2
@RequiredArgsConstructor
public class RequestService {

    private final RequestMapper requestMapper;

    //AS 신청 중간 처리
    public boolean write(Request request) {
        return requestMapper.insertRequest(request);
    }

    //AS 목록 중간 처리
    public List<Request> getRequestList() {
        return requestMapper.getList();
    }

}
