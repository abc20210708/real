
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>A/S WebSite</title>
    <!-- Fontawesome -->
    <link type="text/css" href="/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Pixel CSS -->
    <link type="text/css" href="/css/neumorphism.css" rel="stylesheet">

    <!-- Core -->
    <script src="/vendor/jquery/dist/jquery.min.js" defer></script>
    <script src="/vendor/popper.js/dist/umd/popper.min.js" defer></script>
    <script src="/vendor/bootstrap/dist/js/bootstrap.min.js" defer></script>
    <script src="/vendor/headroom.js/dist/headroom.min.js" defer></script>

    <!-- Neumorphism JS -->
    <script src="/js/neumorphism.js" defer></script>
</head>

<body>
    <main>
        <!-- Section -->
        <section class="min-vh-100 mt-5 mb-5 d-flex bg-primary align-items-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-md-8 col-lg-6 justify-content-center">
                        <div class="card bg-primary shadow-soft border-light p-4">
                            <div class="card-header text-center pb-0">
                                <h2 class="mb-0 h5">관리자 등록</h2>                               
                            </div>
                            <div class="card-body">
                                <form action="/admin/account" method="post">
                                    <!-- Form -->
                                   
                                   
                                    <div class="form-group">
                                        <label for="exampleInputIcon4">관리자 아이디</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-home"></span></span>
                                            </div>
                                            <input class="form-control" id="exampleInputIcon4" name="adminId" placeholder="아이디를 입력하세요." type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputIcon4">관리자 비밀번호</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-envelope"></span></span>
                                            </div>
                                            <input class="form-control" id="exampleInputIcon4" name="adminPw" placeholder="비밀번호를 입력하세요." type="password">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputIcon4">관리자 권한</label>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><span class="fas fa-mobile-alt"></span></span>
                                            </div>
                                            <input class="form-control" id="exampleInputIcon4" name="grade" placeholder="관리자 권한을 입력하세요(1 ~ 5)." type="text">
                                        </div>
                                    </div>
                                 
                                   
                                    <button type="submit" class="btn btn-block btn-primary">관리자 등록</button>
                                </form>
                              
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</body>

</html>