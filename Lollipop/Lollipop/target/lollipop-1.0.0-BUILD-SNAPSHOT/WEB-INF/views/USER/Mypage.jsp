<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import  = "mlp.project.lollipop.USER.*"%>
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
	<% 
		UserDto dto = (UserDto)request.getAttribute("userdto");
		System.out.println(dto.getUser_id());
	%>
   <%@include file="../include/nav.jsp" %>
   <form name = "myform">
    <div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
            <header>
                <div class="logo-wrap">
                    <img src="../resources/Image/lollipop.png" width="50%" style="display: block; margin: 0px auto;">
                </div>
            </header>
	
				<p>
					<label>아이디</label> 
					<input class="w3-input" type="text" id="user_id" name="user_id"  value="<%=dto.getUser_id()%>" readonly> 
					<span id="id_check" class="w3-text-red"></span>
				</p>
				<p>
					<label>비밀번호</label> 
					<input class="w3-input" id="user_password" name="user_password" type="password" readonly placeholder="8자 이내의 비밀번호">
				</p>
		
				<p>
					<label>이름</label> 
					<input class="w3-input" id="user_name"  name = "user_name"  value="<%=dto.getUser_name()%>" type="text" readonly placeholder="홍길동">
				</p>
                 <p>
					<label>핸드폰 번호</label> 
					<input class="w3-input" id="user_phone" name = "user_phone" value="<%=dto.getUser_phone()%>" type="tel" required placeholder="010-0000-0000">
				</p>
				<p>
					<label>이메일 주소</label>
					<input type="email" id="user_mail" name="user_mail" value="<%=dto.getUser_mail()%>" class="w3-input" required placeholder="abc@multi.com">
					<span id="email_check" class="w3-text-red"></span>
				</p>
            
				<p class="w3-center">
					<button type="button" id="joinBtn" onclick = "Modify()" class="w3-button w3-block w3-pink w3-ripple w3-margin-top w3-round">수정</button>
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
function Modify()
{
	var frmData = $("form[name=myform]").serialize();
   console.log( frmData);
      
   $.ajax({
      url:"${commonURL}/User/insert",
      data:frmData,
      type:"POST",
   })
   .done( (result)=>{
      if(result.flag==1){
    	  alert("수정되었습니다.");
          location.href="${commonURL}/"; //시작화면으로 이동하기  
      }
   })
   .fail( (error)=>{
      console.log(error);
   })
}

function goCancel(){
	location.href="${commonURL}/";
}
</script>