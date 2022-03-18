<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body>
   <%@include file="../include/nav.jsp" %>
   <form id = "joinForm" name = "joinForm">
    <div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
            <header>
                <div class="logo-wrap">
                    <img src="../resources/Image/lollipop.png" width="50%" style="display: block; margin: 0px auto;">
                </div>
            </header>
	
				<p>
					<label>아이디</label> 
					<input class="w3-input" type="text" id="user_id" name="user_id" required placeholder="8자 이내의 아이디"> 
					<span id="id_check" class="w3-text-red"></span>
				</p>
				<p>
					<label>비밀번호</label> 
					<input class="w3-input" id="user_password" name="user_password" type="password" required placeholder="8자 이내의 비밀번호">
				</p>
					<p>
					<label>비밀번호 재입력</label> 
					<input class="w3-input" id="password2" name="password2" type="password" required placeholder="비밀번호 재입력">
				</p>
				<p>
					<label>이름</label> 
					<input class="w3-input" id="user_name"  name = "user_name"type="text" required placeholder="홍길동">
				</p>
                 <p>
					<label>핸드폰 번호</label> 
					<input class="w3-input" id="user_phone" name = "user_phone" type="tel" required placeholder="010-0000-0000">
				</p>
				<p>
					<label>이메일 주소</label>
					<input type="email" id="user_mail" name="user_mail" class="w3-input" required placeholder="abc@multi.com">
					<span id="email_check" class="w3-text-red"></span>
				</p>
            
				<p class="w3-center">
					<button type="button" id="joinBtn" onclick = "Signup()" class="w3-button w3-block w3-pink w3-ripple w3-margin-top w3-round">회원가입</button>
					<button type="button" onclick="goCancel()" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">취소</button>
				</p>
	
            <footer>
                <div class="copyright-wrap" style="display: flex; flex-direction: column; align-items: center; height: 30px;">
                    <span>Copyright © Lollipop Corp. All Rights Reserved.</span>
                </div>
            </footer>
		</div>
	</div>
	</form>
</body>
</html>


<script>

	function Signup(){
		
			 if ($("#user_password").val() !== $("#password2").val()) {
	             alert("비밀번호가 다릅니다.");
	             $("#user_password").val("").focus();
	             $("#password2").val("");
	             return false;
	         } else if ($("#user_password").val().length < 8) {
	             alert("비밀번호는 8자 이상으로 설정해야 합니다.");
	             $("#user_password").val("").focus();
	             return false;
	         } else if ($("#user_id").val().search(" ")!=-1||$("#user_password").val().search(" ")!=-1||$("#user_name").val().search(" ")!=-1
	        		||$("#user_mail").val().search(" ")!=-1||$("#user_phone").val().search(" ")!=-1) {
	             alert("공백은 입력이 불가능합니다.");
	             return false;
	         }
			var frmData = $("form[name=joinForm]").serialize();
		   console.log( frmData);   
		   $.ajax({
			      url:"${commonURL}/User/insert",
			      data:frmData,
			      type:"POST",
			   })
			   .done( (result)=>{
				   console.log(result);
				   alert("회원가입이 되었습니다.");
				   location.href = "${commonURL}/"
			   })
			   .fail( (error)=>{
			      console.log(error);
			   })
			   
	}

    
  
    function IsDuplicate(){
           $.ajax({
              url:"${commonURL}/User/isDuplicate", //요청 url정보
              data:{userid:$("#userid").val()},   //서버로 전달할 데이터정보: JSON형태
              dataType:"json",  //결과를 jSON으로 받겠다. 결과가 text로 온다
              type:"POST"
           })
           .done((data)=>{
              //데이터가 정상적으로 수신되면 done메서드 호출되면서 매개변수는 전달받은 값
              //값은 dataType 속성을 안주면 text로 온다.
              console.log(data.result);
             if(data.result == "true") //중복
             {
                alert("이미 사용중인 아이디입니다.")
             }
             else
             {
                alert("사용가능합니다.")
                $("#idcheck").val("Y");
                $("#userid").prop("readonly", true);   //수정못하게 막는 기능
                
             }
           })
           .fail((error)=>{
              //통신에러, 오류에 관한 것
                 console.log(error)
           })
     }

    function goCancel(){
    	location.href="${commonURL}/";
    }

</script>