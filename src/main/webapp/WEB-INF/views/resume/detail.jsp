<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>Blog</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
            <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" rel="stylesheet">
            <link href="/css/style.css" rel="stylesheet">
        </head>

        <body>
            <h1>이력서 상세보기</h1>
            <div class="d-flex justify-content-around mb-3">
                <div class="p-2 ">
                    <h4>기본정보</h4>
                </div>
                <div class="p-2 "><button type="button" class="btn btn-secondary">수정하기</button></div>
            </div>
            <div class="container p-5 my-5 border" var="resume" items="${resume}">
                <span>
                    ${resume.employeeName}
                </span>
                <span>${resume.employeeSex}, ${resume.employeeBrith}</span>
                <ul>
                    <li>이메일 <span>${resume.employeeEmail}</span></li>
                    <li>휴대폰 <span>${resume.employeeTel}</span></li>
                    <li>주소 <span>${resume.employeeLocation}</span></li>
                </ul>
            </div>
            </div>
            <div class=" d-flex justify-content-around mb-3">
                <div class="p-2 ">
                    <h4>학력사항</h4>
                </div>
                <div class="p-2 "><input type="hidden"></div>
            </div>
            <div class="container p-5 my-5 border" var="resume" items="${resume}">
                <span>
                    대학정보입력
                </span>
                <div class="mb-3 mt-3">
                    <label class="form-label">학교명</label>
                    <span>${resume.univName}</span>
                </div>

                <div class="mb-3 mt-3">
                    <label class="form-label">재학기간</label></br>
                    <span>${resume.univStartdate} - ${resume.univEnddate}</span>
                </div>
                <div class="mb-3 mt-3">
                    <label class="form-label">전공</label>
                    <span>${resume.univMajor}</span>
                </div>
                <div class="mb-3 mt-3">
                    <label class="form-label">주/야간</label>
                        <span></span>
                    <div class="mb-3 mt-3">
                        <label class="form-label">학점</label>
                        <span>${resume.univGrade}</span>
                    </div>
                </div>
            </div>

            <div class="d-flex justify-content-around mb-3">
                <div class="p-2 ">
                    <h4>경력사항</h4>
                </div>
                <div class="p-2 "><input type="hidden"></div>
            </div>
            <div class="container p-5 my-5 border">
                <div class="mb-3 mt-3">
                    <label class="form-label">회사명</label>
                    <input type="text" class="form" placeholder="Enter company" name="text">
                </div>

                <div class="mb-3 mt-3">
                    <label class="form-label">재직기간</label></br>
                    <input type="date">
                    -
                    <input type="date">
                    <select class="form">
                        <option>퇴사</option>
                        <option>휴직</option>
                    </select>
                </div>

                <div class="mb-3 mt-3">
                    <label class="form-label">퇴사사유</label>
                    <select class="form">
                        <option>불화</option>
                        <option>업직종전환</option>
                        <option>기타</option>
                    </select>
                </div>

                <div class="mb-3 mt-3">
                    <label class="form-label">직급/직책</label>
                    <select class="form">
                        <option>사원</option>
                        <option>주임</option>
                        <option>차장</option>
                        <option>과장</option>
                        <option>부장</option>
                        <option>기타</option>
                    </select>
                </div>

                <div class="mb-3 mt-3">
                    <label class="form-label">근무부서</label>
                    <input type="text" class="form" placeholder="Enter department" name="department">
                </div>

                <div class="mb-3 mt-3">
                    <label class="form-label">근무지역</label>
                    <select class="form">
                        <option>부산</option>
                        <option>경남</option>
                        <option>서울</option>
                    </select>
                </div>

                <div class="mb-3 mt-3">
                    <label class="form-label">연봉</label>
                    <input type="text" class="form" name="sal">만원
                </div>

                <div class="mb-3 mt-3">
                    <label class="form-label">담당업무</label>
                    <input type="text" class="form" name="task">
                </div>
            </div>
        </body>