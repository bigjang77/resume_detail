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
            <div class="container p-5 my-5 border" var="employee" items="${employeeList}">
                <span>
                    ${employee.employeeName}
                </span><span> sex, birth</span>
                <ul>
                    <li>이메일 <span>0000@gmail.com</span></li>
                    <li>휴대폰 <span>000-1111-2222</span></li>
                    <li>전화번호 <span>000-111-2222</span></li>
                    <li>주소 <span>부산시 어디구 저기동</span></li>
                </ul>
            </div>
            </div>
            <div class=" d-flex justify-content-around mb-3">
                <div class="p-2 ">
                    <h4>학력사항</h4>
                </div>
                <div class="p-2 "><input type="hidden"></div>
            </div>
            <div class="container p-5 my-5 border">
                <span>
                    대학정보입력
                </span>
                <div class="mb-3 mt-3">
                    <label class="form-label">학교명</label>
                    <select class="form">
                        <option>대학교(4년)</option>
                        <option>대학교(2년)</option>
                    </select>
                </div>
                <div class="mb-3 mt-3">
                    <label class="form-label">학교명</label>
                    <input type="text" class="form" placeholder="Enter university" name="text">
                </div>

                <div class="mb-3 mt-3">
                    <label class="form-label">지역</label>
                    <select class="form">
                        <option>부산</option>
                        <option>경남</option>
                        <option>서울</option>
                    </select>
                </div>
                <div class="mb-3 mt-3">
                    <label class="form-label">재학기간</label></br>
                    <input type="date">
                    -
                    <input type="date">
                    <select class="form">
                        <option>졸업</option>
                        <option>재학</option>
                    </select>
                </div>
                <div class="mb-3 mt-3">
                    <label class="form-label">전공</label>
                    <select class="form">
                        <option>경제/경영</option>
                        <option>컴퓨터공학</option>
                        <option>물리학과</option>
                    </select>
                    <input type="text" class="form" name="major">
                    <button>전공 추가하기</button>
                </div>
                <div class="mb-3 mt-3">
                    <label class="form-label">주/야간</label>
                    <select class="form">
                        <option>주간</option>
                        <option>야간</option>
                    </select>
                    <div class="mb-3 mt-3">
                        <label class="form-label">학점</label>
                        <input type="text" class="form" name="score">
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