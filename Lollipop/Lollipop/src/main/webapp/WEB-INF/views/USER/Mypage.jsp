<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import  = "mlp.project.lollipop.USER.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>마이페이지</title>

<!--

Template 2101 Insertion

http://www.tooplate.com/view/2101-insertion

-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- load CSS -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">        <!-- Google web font "Open Sans" -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">                                            <!-- https://getbootstrap.com/ -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">                                      <!-- Font awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tooplate-style.css">                                           <!-- Templatemo style -->

  <script>
    var renderPage = true;

    if (navigator.userAgent.indexOf('MSIE') !== -1
      || navigator.appVersion.indexOf('Trident/') > 0) {
      /* Microsoft Internet Explorer detected in. */
      alert("Please view this in a modern browser such as Chrome or Microsoft Edge.");
      renderPage = false;
    }
  </script>

</head>

<body>
       <form id ="myform" name ="myform">
	<% 
		UserDto dto = (UserDto)request.getAttribute("userdto");
	%>


  <!-- Loader -->
  <div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
  </div>

  <div class="tm-main">

    <div class="tm-welcome-section">

   <%@include file="../include/nav.jsp" %>
      <div class="container text-center tm-welcome-container">
        <div class="tm-welcome">
          <p class="fas tm-fa-big tm-fa-mb-big">
          <img src="${pageContext.request.contextPath}/resources/img/main.png" alt="Image" class="img-fluid">
          Lollipop</p>
          <h1 class="text-uppercase mb-3 tm-site-name"></h1>
          <p class="tm-site-description"></p>
        </div>
        </div>

    </div>

    <div class="container">
		  <%@include file="../include/search.jsp" %>

      <div class="row tm-mt-big tm-about-row tm-mb-medium">
        <div class="col-xl-12 col-lg-12 col-md-12 col-xs-12 tm-contact-col">
          <div class="tm-contact-left tm-bg-pink-light-2 tm-text-white text-right p-md-5 p-4">
            <i class="fas fa-3x fa-comments mb-4"></i>
            <h2 class="tm-media-2-header">Mypage</h2>
          </div>
          <div class="tm-bg-gray tm-contact-middle">



              <div class="form-group mb-4">
                <input type="text"  id = "user_id" name="user_id" class="form-control" value =<%=dto.getUser_id()%>  placeholder="ID" required/>
              </div>
              <div class="form-group mb-4">
                <input type="password"  id = "user_password" name="user_password" class="form-control" value =<%=dto.getUser_password()%> placeholder="Password" required/>
              </div>

               <div class="form-group mb-4">
                <input type="text"  id = "user_name" name="user_name" class="form-control" value =<%=dto.getUser_name()%> placeholder="Name" required/>
              </div>
               <div class="form-group mb-4">
                <input type="text"  id = "user_phone" name="user_phone" class="form-control" value =<%=dto.getUser_phone()%> placeholder="Phone" required/>
              </div>
               <div class="form-group mb-4">
                <input type="text"  id = "user_mail" name="user_mail" class="form-control" value =<%=dto.getUser_mail()%> placeholder="Email" required/>
              </div>
          	
              <div class="form-group mb-0">
                <button type="button" class="btn btn-secondary" id="joinBtn" onclick = "Modify()">Modify</button>
              </div>
            </form>
          </div>
          <div class="tm-bg-gray tm-contact-right">
           

             <div>
               <h2 class="tm-media-2-header tm-text-pink-dark mb-3">My Menu</h2>
               <address class="mb-4">

                  <a href="${commonURL}/Mark/list" class="nav-link tm-nav-link tm-text-white active">BookMark</a>
				  <a href="${commonURL}/User/logout" class="nav-link tm-nav-link tm-text-white active">Logout</a>

               </address>
                
             </div>
          </div>
        </div>
      </div>

      <!-- Bottom links -->
      <footer class="row">
        <div class="col-xl-12">
          <p class="text-center p-4">Copyright &copy; <span class="tm-current-year">2018</span> Lollipop Inc. All rights reserved.
        </div>
      </footer>
    </div> <!-- .container -->

  </div> <!-- .main -->

  <!-- load JS -->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.slim.min.js"></script> <!-- https://jquery.com/ -->
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>         <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tooplate-style.css">                                           <!-- Templatemo style -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script>

    /* DOM is ready
    ------------------------------------------------*/
    $(function () {

      if (renderPage) {
        $('body').addClass('loaded');
      }

      $('.tm-current-year').text(new Date().getFullYear());  // Update year in copyright
    });

  </script>
</body>
</form>
</html>
<script>

window.onload = function(){
	var texts =['선택','전체보기','','음식', '카페', '놀거리'];
	if('<%=key%>' !=""){
	let key = '<%=key%>';
	document.getElementById("searchItem").innerHTML = texts[key];
	}else{
	document.getElementById("searchItem").innerHTML = texts[0];
	}
}


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

function changeSearch(id){
	
	var texts =['','전체보기','','음식', '카페', '놀거리'];
	document.getElementById("searchItem").innerHTML = texts[id];
	document.getElementById("key").value = id;
	document.getElementById("keyword").value= "";
}

function gosearch(){
	if(document.getElementById("key").value ==0){
		alert("카테고리를 선택해주세요.");
		return false;
	}
	let frm = document.myform;
	frm.pg.value=0;
	frm.action = "<%=request.getContextPath()%>/PLAY_Review/list";
	frm.method ="GET";
	frm.submit();
}


</script>
