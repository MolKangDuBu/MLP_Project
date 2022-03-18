<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setAttribute("commonURL", request.getContextPath());%>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>롤리팝 로그인</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<<<<<<< HEAD
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<form name ="myform">
   <%@include file="../include/nav.jsp" %>
   
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
=======

    <body>
        <div class="w3-content w3-container w3-margin-top">
            <div class="w3-container w3-card-4">
                <header>
                    <div class="logo-wrap">
                        <img src="assets/img/lollipop.png" width="50%" style="display: block; margin: 0px auto;">
                    </div>
                </header>
				<section id="logininForm" action="./member/login_member.do" method="post">
					<p>
						<label>아이디</label> 
						<input class="w3-input" type="text" id="id" name="id" required placeholder="8자 이내의 아이디"> 
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
						<span id="id_check" class="w3-text-red"></span>
					</p>
					<p>
						<label>비밀번호</label> 
<<<<<<< HEAD
						<input class="w3-input" id="user_password" name="user_password" type="password" required placeholder="8자 이내의 비밀번호">
                    </p>
                    <p class="w3-center">
                        <button type="button" id="loginBtn" onclick = "Login()" class="w3-button w3-block w3-pink w3-ripple w3-margin-top w3-round">로그인</button>
                        <button type="button" onclick="goCancel()" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">취소</button>
                    </p>
              
       
=======
						<input class="w3-input" id="pw" name="pw" type="password" required placeholder="8자 이내의 비밀번호">
                    </p>
                    <p class="w3-center">
                        <button type="submit" id="loginBtn" class="w3-button w3-block w3-pink w3-ripple w3-margin-top w3-round">로그인</button>
                        <button type="button" onclick="history.go(-1);" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">취소</button>
                    </p>
                </section>
                <section class="join-and-find">
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
                    <div class="join-wrap" style="color: rgba(241, 19, 123, 0.863); width: 915px; display: flex; flex-direction: row; 
                    align-items: flex-end; justify-content: flex-end; padding-bottom: 15px; font-size: 13px;">
                        <a href="">회원가입</a>&nbsp;&nbsp;&nbsp;
                        <a href="">비밀번호 찾기</a>
                    </div>
<<<<<<< HEAD
      
=======
                </section>
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
                <footer>
                    <div class="copyright-wrap" style="display: flex; flex-direction: column; align-items: center; height: 30px;">
                        <span>Copyright © Lollipop Corp. All Rights Reserved.</span>
                    </div>
                </footer>
            </div>
        </div>
    </body>
<<<<<<< HEAD
</html>
<script>
function Login()
{
	var frmData = $("form[name=myform]").serialize();
   console.log( frmData);
      
   $.ajax({
      url:"${commonURL}/User/login_proc",
      data:frmData,
      type:"POST",
   })
   .done( (result)=>{
      if(result.flag==1){
    	  alert("로그인 되었습니다.");
          location.href="${commonURL}/"; //시작화면으로 이동하기  
      }else if(result.flag ==2){
    	  alert("아이디를 찾을 수 없습니다.");
      }else{
    	  alert("패스워드가 일치하지 않습니다.");
      }
   })
   .fail( (error)=>{
      console.log(error);
   })
}
function goSignup(){
	location.href="${commonURL}/User/signup";
}

function goFindid(){
	location.href="${commonURL}/User/findid";
}
function goFindpassword(){

	location.href="${commonURL}/User/findpwd";
}
function goCancel(){
	location.href="${commonURL}/";
}


</script>
=======
</html>
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
