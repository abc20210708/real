<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-md-8 col-lg-6 justify-content-center">
            <div class="card bg-primary shadow-soft border-light p-4">
                <div class="card-header text-center pb-0">
                    <h2 class="h4">ISEC A/S 회원탈퇴</h2>  
                </div>
                <div class="card-body">
                    <form action="/login/sign-in" class="mt-4" method="post">
                        <!-- Form -->
                        <c:if test="${member == null}">
                        <div class="form-group">
                            <label for="exampleInputIcon3">아이디(ID)</label>
                            <div class="input-group mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><span class="fas fa-user"></span></span>
                                </div>
                                <input class="form-control" id="exampleInputIcon3" name="id" placeholder="아이디(ID)를 입력하세요" type="text" required>
                            </div>
                        </div>
                        <!-- End of Form -->
                        <div class="form-group">
                            <!-- Form -->
                            <div class="form-group">
                                <label for="exampleInputPassword6">비밀번호</label>
                                <div class="input-group mb-4">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><span class="fas fa-unlock-alt"></span></span>
                                    </div>
                                    <input class="form-control" id="exampleInputPassword6" name="pw" placeholder="비밀번호를 입력하세요" type="password" required>
                                </div>
                            </div>
                            <!-- End of Form -->
                            <div class="d-block d-sm-flex justify-content-between align-items-center mb-4">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck5">
                                    <label class="form-check-label" for="defaultCheck5">
                                      계정정보 기억하기
                                    </label>
                                </div>
                               
                            </div>
                        </div>
                        <button type="submit" class="btn btn-block btn-primary">회원탈퇴</button>