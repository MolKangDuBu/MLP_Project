<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <body>
        <div class="w3-content w3-container w3-margin-top">
            <div class="w3-container w3-card-4">
                <header>
                    <div class="logo-wrap">
                        <img src="assets/img/lollipop.png" width="50%" style="display: block; margin: 0px auto;">
                    </div>
                </header>
				<section id="findForm" action="./member/find_id_member.do" method="post">
                    <p>
						<label>이름</label> 
						<input class="w3-input" type="text" id="id" name="id" required placeholder="가입 이름"> 
						<span id="id_check" class="w3-text-red"></span>
					</p>
					<p>
						<label>이메일 주소</label> 
						<input class="w3-input" type="email" id="id" name="id" required placeholder="가입 이메일 주소 (해당 이메일 주소로 인증메일을 보냅니다.)"> 
						<span id="id_check" class="w3-text-red"></span>
					</p>

                    <p class="w3-center">
                        <button type="submit" id="findBtn" class="w3-button w3-block w3-pink w3-ripple w3-margin-top w3-round">아이디 찾기</button>
                        <button type="button" onclick="history.go(-1);" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">취소</button>
                    </p>

                </section>
                <section class="join-and-find">
                    <div class="join-wrap" style="color: rgba(241, 19, 123, 0.863); width: 915px; display: flex; flex-direction: row; 
                    align-items: flex-end; justify-content: flex-end; padding-bottom: 15px; font-size: 13px;">
                        <a href="">로그인</a>&nbsp;&nbsp;&nbsp;
                        <a href="">회원가입</a>
                    </div>
                </section>
                <footer>
                    <div class="copyright-wrap" style="display: flex; flex-direction: column; align-items: center; height: 30px;">
                        <span>Copyright © Lollipop Corp. All Rights Reserved.</span>
                    </div>
                </footer>
            </div>
        </div>
    </body>
</html>