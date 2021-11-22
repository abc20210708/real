<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="wrap">
    

    <div class="content-container">

        <h1 class="main-title">${req.asNum}번 신청 세부사항</h1>

        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">회원아이디</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="이름" name="writer"
                value="${req.csId}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">제품명</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                value="${req.productName}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">수량</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                value="${req.amount}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">방문선택</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                value="${req.asChoice}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">문제점</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                value="${req.asComment}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">신청날짜</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                value="${req.asDate}" disabled>
        </div>

        <div class="bottom-group">
            <div class="update-time">
                <c:if test="${b.updateDate != null}">
                    <span class="time">마지막 수정 시간:
                        <fmt:formatDate value="${b.updateDate}" pattern="yyyy년 MM월 dd일 a hh:mm:ss" /></span>
                </c:if>
            </div>

            <div class="btn-group btn-group-lg custom-btn-group" role="group">
                <button id="mod-btn" type="button" class="btn btn-warning">수정</button>
                <button id="del-btn" type="button" class="btn btn-danger">삭제</button>
                <button id="list-btn" type="button" class="btn btn-dark">목록</button>
            </div>
        </div>
    </div>   
</div>
