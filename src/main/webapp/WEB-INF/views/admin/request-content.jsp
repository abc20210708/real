<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="wrap">
    

    <div class="content-container">

        <h1 class="main-title">${b.boardNo}번 게시물</h1>

        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">작성자</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="이름" name="writer"
                value="${b.writer}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">글제목</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" placeholder="제목" name="title"
                value="${b.title}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">내용</label>

            <p class="main-content">
                ${b.content}
            </p>

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
