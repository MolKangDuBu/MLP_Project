<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>롤리팝 회원가입</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
            <header>
                <div class="logo-wrap">
                    <img src="assets/img/lollipop.png" width="50%" style="display: block; margin: 0px auto;">
                </div>
            </header>
			<section id="joinForm" action="./member/join_member.do" method="post">
				<p>
					<label>아이디</label> 
					<input class="w3-input" type="text" id="id" name="id" required placeholder="8자 이내의 아이디"> 
					<span id="id_check" class="w3-text-red"></span>
				</p>
				<p>
					<label>비밀번호</label> 
					<input class="w3-input" id="pw" name="pw" type="password" required placeholder="8자 이내의 비밀번호">
				</p>
				<p>
					<label>이름</label> 
					<input class="w3-input" id="pw2" type="text" required placeholder="홍길동">
				</p>
                 <p>
					<label>핸드폰 번호</label> 
					<input class="w3-input" id="pw2" type="tel" required placeholder="010-0000-0000">
				</p>
				<p>
					<label>이메일 주소</label>
					<input type="email" id="email" name="email" class="w3-input" required placeholder="abc@multi.com">
					<span id="email_check" class="w3-text-red"></span>
				</p>
            
				<p class="w3-center">
					<button type="submit" id="joinBtn" class="w3-button w3-block w3-pink w3-ripple w3-margin-top w3-round">회원가입</button>
					<button type="button" onclick="history.go(-1);" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">취소</button>
				</p>
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

<script src="http://code.jquery.com/jquery-latest.js"></script>
    <script>
        $(function(){
            $("#joinForm").submit(function(){
                if($("#pw").val() !== $("#pw2").val()){
                    alert("비밀번호가 다릅니다.");
                    $("#pw").val("").focus();
                    $("#pw2").val("");
                    return false;
                }else if ($("#pw").val().length < 8) {
                    alert("비밀번호는 8자 이상으로 설정해야 합니다.");
                    $("#pw").val("").focus();
                    return false;
                }else if($.trim($("#pw").val()) !== $("#pw").val() || $.trim($("#email").val()) !== $("#email").val() || $.trim($("#id").val()) !== $("#id").val()){
                    alert("공백은 입력이 불가능합니다.");
                    return false;
                }
            })
            
            $("#id").keyup(function() {
                $.ajax({
                    url : "../member/check_id.do",
                    type : "POST",
                    data : {
                        id : $("#id").val()
                    },
                    success : function(result) {
                        if (result == 1) {
                            $("#id_check").html("중복된 아이디가 있습니다.");
                            $("#joinBtn").attr("disabled", "disabled");
                        } else {
                            $("#id_check").html("");
                            $("#joinBtn").removeAttr("disabled");
                        }
                    },
                })
            });
            
            $("#email").keyup(function(){
                $.ajax({
                    url : "./check_email.do",
                    type : "POST",
                    data : {
                        email : $("#email").val()
                    },
                    success : function(result) {
                        if (result == 1) {
                            $("#email_check").html("중복된 이메일이 있습니다.");
                        } else {
                            $("#email_check").html("");
                        }
                    },
                })
            });
        })
</script>