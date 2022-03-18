<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<<<<<< HEAD
<html>
=======
<html lang="en">
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD
    <title>비밀번호 찾기</title>
    <link href="../resources/css/login.css" rel="stylesheet" />
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <body>
      <%@include file="../include/nav.jsp" %>
    <form name ="findidform">
        <div class="main-container">
            <div class="main-wrap">
            <header>
                <div class="logo-wrap">
                    <img src="../resources/Image/lollipop.png" >
                </div>
            </header>
            <section class="login-input-section-wrap">
             
                 <div class="login-input-wrap">	
                   <input id = "user_mail" name = "user_mail" placeholder="이메일" type="text"></input>    
                </div><br/>
                    <div class="login-input-wrap">	
                   <input id = "user_phone" name = "user_phone" placeholder="전화번호" type="text"></input>    
                </div>
                
                <div class="login-button-wrap">
                    <button type= "button" onclick ="Findid()">비밀번호 찾기</button>
                </div>
            </section>
            <section class="join-and-find">
           
                <div class="join-wrap">
                	<a href="">로그인</a>&nbsp;
                    <a href>회원가입</a>
                </div>
            </section>
            <footer>
                <div class="copyright-wrap">
                <span>Copyright © Lollipop Corp. All Rights Reserved.</span>
                </div>
            </footer>
            </div>
        </div>
        </form>
    </body>
</html>



<script>
	function Findid(){
		var frmData = $("form[name=findidform]").serialize();
		      
		   $.ajax({
		      url:"${commonURL}/User/findid_proc",
		      data:frmData,
		      type:"POST",
		   })
		   .done( (result)=>{
		      if(result.result==1){
		    	  alert("이메일로 아이디가 전송되었습니다.");
		          location.href="${commonURL}/"; //시작화면으로 이동하기  
		      }else{
		    	  alert("정보에 맞는 아이디를 찾을 수 없습니다.");
		      }
		   })
		   .fail( (error)=>{
		      console.log(error);
		   })
	}


</script>
=======
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
>>>>>>> b0f420b40a1fa4b43dc33107125ed7cab6b2d99b
