<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JUHEE CUSTOM - 나만의 물건 제작하기</title>
    <link rel="stylesheet" href="resources/css/header.css">
    <link rel="stylesheet" href="resources/css/footer.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>

<body>

    <!-- header -->

    <div class="container">

        <!--first-child-->
        <div class="container">
            <div>
                <button class="sign_up">회원가입</button>
                <button class="sign_in">로그인</button>
                <button>고객센터</button>
            </div>
        </div>

        <!--last-child-->
        <div class="container">

            <div>
                <img src="resources/images/logo.png" alt="로고" width="170px" />
            </div>
                

            <div>
                
                <a href="category_clothes.html">의류</a>
                <a href="#">액자</a>
                <a href="#">폰케이스/테크</a>
                <a href="#">홈데코/리빙</a>
            </div>

            <div>
                <button id="myPage">
                    <img width=30px; src="resources/images/profile.png" alt=""/>
                    <span class="material-symbols-outlined">
                        arrow_drop_down
                        </span>
                </button>
            </div>
        </div>
    </div>

    <!--마이페이지 드롭다운-->
    <div id="myPage_drop-down" class="container hidden">
        
        <button>주문 내역</button>
            <button>나의 리뷰</button>
            <button>나의 정보</button>
            <button>1:1 문의</button>
    </div>
