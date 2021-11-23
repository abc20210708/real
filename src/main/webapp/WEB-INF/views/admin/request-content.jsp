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
    <script src="./vendor/jquery/dist/jquery.min.js" defer></script>
    <script src="./vendor/popper.js/dist/umd/popper.min.js" defer></script>
    <script src="./vendor/bootstrap/dist/js/bootstrap.min.js" defer></script>
    <script src="./vendor/headroom.js/dist/headroom.min.js" defer></script>

    <!-- Neumorphism JS -->
    <script src="/js/neumorphism.js" defer></script>
</head>
<body>
    <header class="header-global">
        <nav id="navbar-main" aria-label="Primary navigation" class="navbar navbar-main navbar-expand-lg navbar-theme-primary headroom navbar-light navbar-transparent navbar-theme-primary">
            <div class="container position-relative">
                <a class="navbar-brand shadow-soft py-2 px-3 rounded border border-light mr-lg-4" href="/index.html">
                    <img class="navbar-brand-dark" src="/img/italic(blue).png" alt="Logo light">
                    <img class="navbar-brand-light" src="/img/italic(blue).png" alt="Logo dark">
                </a>
                <div class="navbar-collapse collapse" id="navbar_global">
                    <div class="navbar-collapse-header">
                        <div class="row">
                            <div class="col-6 collapse-brand">
                                <a href="/index.html" class="navbar-brand shadow-soft py-2 px-3 rounded border border-light">
                                    <img src="" alt="Themesberg logo">
                                </a>
                            </div>
                            <div class="col-6 collapse-close">
                                <a href="#navbar_global" class="fas fa-times" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" title="close" aria-label="Toggle navigation"></a>
                            </div>
                        </div>
                    </div>
                    <ul class="navbar-nav navbar-nav-hover align-items-lg-center">
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link" data-toggle="dropdown" >
                                <span class="nav-link-inner-text">A/S신청</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown mega-dropdown">
                            <a href="#" class="nav-link" data-toggle="dropdown" >
                                <span class="nav-link-inner-text">서비스안내</span>
                                <span class="fas fa-angle-down nav-link-arrow ml-2"></span>
                            </a>
                            <div class="dropdown-menu">
                                <div class="row">
                                    <div class="col-lg-6 inside-bg d-none d-lg-block">
                                        <div class="justify-content-center bg-primary">
                                            <div class="px-6 pb-5 pt-3">
                                                <img src="/img/20210825_caresolution.webp" alt="Pixel Components">
                                            </div>
                                            <div class="z-2 pb-4 text-center">
                                                <h4>
                                                    회원전용 서비스로 
                                                    <small class="text-muted">더 편리하게 이용해보세요.</small>
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col pl-0">
                                        <ul class="list-style-none">
                                            <li><a class="dropdown-item" href="#">카드뉴스</a></li>
                                            <li><a class="dropdown-item" href="#">제품문제해결</a></li>
                                            <li><a class="dropdown-item" href="#">서비스뉴스</a></li>
                                        </ul>
                                    </div>
                                    <div class="col pl-0">
                                        <ul class="list-style-none">
                                            <li><a class="dropdown-item" href="#">요금/보증안내</a></li>
                                            <li><a class="dropdown-item" href="#">칭찬합니다</a></li>
                                            <li><a class="dropdown-item" href="#">매장찾기</a></li>
                                        </ul>
                                    </div>
                                    <div class="col pl-0">
                                        <ul class="list-style-none">
                                            <li><a class="dropdown-item" href="#">공지사항</a></li>
                                            <li><a class="dropdown-item" href="#">자주찾는질문</a></li>
                                            <li><a class="dropdown-item" href="#">이메일문의</a> </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a href="#" class="nav-link" data-toggle="dropdown" >
                                <span class="nav-link-inner-text">고객지원</span>
                                <span class="fas fa-angle-down nav-link-arrow ml-2"></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-lg">
                                <div class="col-auto px-0" data-dropdown-content>
                                    <div class="list-group list-group-flush">
                                        <a href="#" target="_blank" class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                            <span class="icon icon-sm icon-secondary"><span class="fas fa-file-alt"></span></span>
                                            <div class="ml-4">
                                                <span class="text-dark d-block">온라인 사용 설명서<span class="badge badge-sm badge-secondary ml-2">v1.0</span></span>
                                                <span class="small">제품에 필요한 사용설명서, 소프트웨어, 드라이버를 지원해드립니다.</span>
                                            </div>
                                        </a>
                                        <a href="#" target="_blank" class="list-group-item list-group-item-action d-flex align-items-center p-0 py-3 px-lg-4">
                                            <span class="icon icon-sm icon-secondary"><span class="fas fa-microphone-alt"></span></span>
                                            <div class="ml-4">
                                                <span class="text-dark d-block">전화상담 예약</span>
                                                <span class="small">전문상담사가 친절히 안내해드립니다.</span>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="d-flex align-items-center">
                    <a href="sign-up.html" class="btn btn-primary text-secondary mr-3"><i class="fas fa-user-plus mr-2"></i> 회원가입</a>
                    <a href="sign-in.html" class="btn btn-primary d-none d-md-inline-block"><i class="fas fa-sign-in-alt"></i> 로그인</a>
                    <button class="navbar-toggler ml-2" type="button" data-toggle="collapse" data-target="#navbar_global" aria-controls="navbar_global" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
            </div>
        </nav>
    </header>

    <main>
        <!-- Section -->
        <section class="section section-lg">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-12 col-lg-12 mb-5">
                        <!-- Contact Card -->
                        <div class="card bg-primary shadow-soft border-light p-2 p-md-3 p-lg-5">
                            <div class="card-header text-center">
                                <h1 class="display-4">${req.asNum}번 신청 세부사항</h1>
                            </div>
                            <form action="#" method="post" class="col-12 col-md-8 mx-auto">
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="validationServer01">회원아이디(ID)</label>
                                    <input type="text" class="form-control is-valid" id="validationServer01" disabled value="${req.csId}">
                                </div>
                                <!-- Form -->
                                <div class="col-lg-12 row">
                                    <div class="col-lg-4 col-sm-6">
                                        <!-- Form -->
                                        <div class="form-group">
                                            <label for="validationServer01">제품명</label>
                                            <input type="text" class="form-control" id="validationServer01" disabled value="${req.productName}">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-6">
                                        <!-- Form -->
                                        <div class="form-group">
                                            <label for="validationServer01">수량</label>
                                            <input type="text" class="form-control" id="validationServer01" disabled  value="${req.amount}">
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-sm-6">
                                        <!-- Form -->
                                        <div class="form-group">
                                            <label for="validationServer01">방식</label>
                                            <input type="text" class="form-control" id="validationServer01" disabled value="${req.asChoice}">
                                        </div>
                                    </div>
                                </div>
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea2">세부 증상</label>
                                    <textarea class="form-control" id="exampleFormControlTextarea2" disabled rows="4" placeholder="${req.asComment}"></textarea>
                                </div>
                                <!-- End of Form -->
                                <!-- Form -->
                                <div class="form-group">
                                    <label for="validationServer01">신청날짜</label>
                                    <input type="text" class="form-control" id="validationServer01" value="${req.asDate}" disabled>
                                </div>
                            </form>
                            
                            <div class="card-footer px-0 mx-auto row">
                                <button type="button" id="listBtn" class="btn btn-primary btn-block text-info px-5">A/S 목록</button>
                            </div>
                        </div>
                        <!-- End of Contact Card -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End of section -->
    </main>

    <footer class="d-flex pb-5 pt-6 pt-md-7 border-top border-light bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <p><strong>ISEC A/S</strong>에서는 오늘 하루도 고객의 불만과 불편을 듣고 해결하기 위해 최선을 다하고 있습니다. 최고의 품질과 서비스로 고객감동을 위한 실천을 최우선 자세로 삼고 있습니다. </p>
                    <ul class="d-flex list-unstyled mb-5 mb-lg-0">
                        <li class="mr-2">
                            <a href="#" target="_blank" class="btn btn-icon-only btn-pill btn-primary" aria-label="twitter social link"
                            data-toggle="tooltip" data-placement="top" title="Follow @themesberg on Twitter">
                                <span aria-hidden="true" class="fab fa-twitter"></span>
                            </a>
                        </li>
                        <li class="mr-2">
                            <a href="#" target="_blank" class="btn btn-icon-only btn-pill btn-primary" aria-label="facebook social link"
                            data-toggle="tooltip" data-placement="top" title="Like @themesberg on Facebook">
                                <span aria-hidden="true" class="fab fa-facebook"></span>
                            </a>
                        </li>
                        <li class="mr-2">
                            <a href="#" target="_blank" class="btn btn-icon-only btn-pill btn-primary" aria-label="github social link"
                            data-toggle="tooltip" data-placement="top" title="Open source projects">
                                <span aria-hidden="true" class="fab fa-github"></span>
                            </a>
                        </li>
                        <li>
                            <a href="#" target="_blank" class="btn btn-icon-only btn-pill btn-primary" aria-label="dribbble social link"
                            data-toggle="tooltip" data-placement="top" title="Follow us on Dribbble">
                                <span aria-hidden="true" class="fab fa-dribbble"></span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-6 col-lg-2 mb-5 mb-lg-0">
                    <h5>서비스안내</h5>
                    <ul class="footer-links list-unstyled mt-2">
                        <li class="mb-1"><a class="p-2" target="_blank" href="#">카드뉴스</a></li>
                        <li class="mb-1"><a class="p-2" target="_blank" href="#">제품문제해결</a></li>
                        <li class="mb-1"><a class="p-2" target="_blank" href="#">서비스뉴스</a></li>
                        <li><a class="p-2" target="_blank" href="#">요금보증문제</a></li>
                    </ul>
                </div>
                <div class="col-6 col-lg-2 mb-5 mb-lg-0">
                    <h5>고객지원</h5>
                    <ul class="footer-links list-unstyled mt-2">
                        <li class="mb-1"><a class="p-2" href="#" target="_blank">온라인 사용 설명서
                            <span class="badge badge-gray text-uppercase ml-2">v1.0</span></a>
                        </li>
                        <li>
                            <a class="p-2" href="#" target="_blank">전화상담 예약</a>
                        </li>
                    </ul>
                </div>
                <div class="col-12 col-lg-4 mb-5 mb-lg-0">
                    <h5>이메일문의</h5>
                    <p class="text-gray font-small mt-2">궁금한점이 있으시면 무엇이든 물어보세요.</p>
                    <form action="#">
                        <div class="form-row mb-2">
                            <div class="col-12">
                                <label class="h6 font-weight-normal d-none" for="exampleInputEmail3">Email address</label>
                                <input type="email" class="form-control mb-2" placeholder="example@company.com" name="email" aria-label="Subscribe form" id="exampleInputEmail3" required>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary btn-block" data-loading-text="Sending">
                                    <span>이메일 전송</span>
                                </button>
                            </div>
                        </div>
                    </form>
                    <p class="text-gray font-small m-0">평일 근무시간 상담사가 문의 내용을 확인 후 답변하므로 주말 및 연휴에 문의하신 건의 답변은 지연될 수 있습니다.</p>
                </div>
            </div>
            <hr class="my-5">
            <div class="row">
                <div class="col">
                    <a href="#" target="_blank" class="d-flex justify-content-center">
                        <img src="/img/italic(blue).png" height="25" class="mb-3" alt="Themesberg Logo">
                    </a>
                <div class="d-flex text-center justify-content-center align-items-center" role="contentinfo">
                    <p class="font-weight-normal font-small mb-0">Copyright © ISEC A/S
                        <span class="current-year">2021</span>. All rights reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>


    <script>
        //목록버튼
        const $listBtn = document.getElementById('listBtn');

        $listBtn.onclick = e => {
            location.href = '/admin/list';
        };

    </script>
</body>
</html>