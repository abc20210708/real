<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <div class="wrap">

        <div class="btn-group btn-group-lg custom-btn-group" role="group">




            <!-- <button id="list" type="button" class="btn btn-dark">목록</button> -->
            <c:forEach var="ad" items="${admin}">




                <p id="content">${ad.adminId}</p>
                <p>${ad.adminPw}</p>
                <p>${ad.grade}</p>
              


            </c:forEach>


            <!-- <button id="mod-btn" href="#" type="button" class="btn btn-warning">조회</button>
            <button id="del-btn" type="button" class="btn btn-danger">수정</button>
            <button id="list-btn" type="button" class="btn btn-dark">삭제</button> -->
        </div>




    </div>

    <script>
        //상세보기 요청 이벤트
    </script>