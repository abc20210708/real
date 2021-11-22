<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="wrap">
    

    <div class="content-container">
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">회원아이디</label>
            <input type="text" class="form-control" id="exampleFormControlInput1"  name="csId"
                value="${user.id}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">회원 이름</label>
            <input type="text" class="form-control" id="exampleFormControlInput2"  name="name"
                value="${user.name}" disabled>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">주소</label>
            <input type="text" class="form-control" id="exampleFormControlInput2"  name="address"
                value="${user.address}" >
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">우편번호</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" name="postalCode"
                value="${user.postalCode}" >  
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">휴대폰번호</label>
            <input type="text" class="form-control" id="exampleFormControlInput2" name="phone"
                value="${user.phone}" >  
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput2" class="form-label">성별</label>
            <input type="text" class="form-control" id="exampleFormControlInput2"  name="gender"
                value="${user.gender}" disabled>  
        </div>
        

    




        
        

        <div class="bottom-group">
        

            <div class="btn-group btn-group-lg custom-btn-group" role="group">
                <button id="mod-btn" type="submit" class="btn btn-warning">수정 완료</button>
                <button id="list-btn" type="button" class="btn btn-dark">홈으로</button>
            </div>
        </div>


    </form>
    </div>   
</div>

<script>

    //목록버튼
    const $listBtn = document.getElementById('list-btn');

    $listBtn.onclick = e => {
        location.href = '/main/index';
    };
</script>


