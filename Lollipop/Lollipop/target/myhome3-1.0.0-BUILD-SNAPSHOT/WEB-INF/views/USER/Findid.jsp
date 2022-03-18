<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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