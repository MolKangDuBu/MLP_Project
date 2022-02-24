<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>롤리팝 로그인</title>
    <link href="../resources/css/login.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"
        type="text/css" />

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet"
        type="text/css" />
</head>
<body>

    <nav style="background-color: bisque;">
        <div class="container">
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">공지사항</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">고객센터</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">로그인</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="main-container">
        <div class="main-wrap">
            <header>
                <div class="logo-wrap">
                    <img src="../resources/Image/lollipop.png">
                </div>
            </header>
            <section class="login-input-section-wrap">
                <div class="login-input-wrap">
                    <input placeholder="아이디" type="text"></input>
                </div>
                <div class="login-input-wrap password-wrap">
                    <input placeholder="비밀번호" type="password"></input>
                </div>
                <div class="login-button-wrap">
                    <button>로그인</button>
                </div>
            </section>
            <section class="join-and-find">
                <div class="join-wrap">
                    <a href="">회원가입</a>
                </div>
                <div class="find-wrap">
                    <a href>비밀번호 찾기</a>
                </div>
            </section>
            <footer>
                <div class="copyright-wrap">
                    <span>Copyright © Lollipop Corp. All Rights Reserved.</span>
                </div>
            </footer>
        </div>
    </div>
</body>
</html>