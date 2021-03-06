<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Insertion - Login Page</title>

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
          <i class="fas tm-fa-big fa-music tm-fa-mb-big"></i>
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
            <h2 class="tm-media-2-header">Login</h2>
          </div>
          <div class="tm-bg-gray tm-contact-middle">
    
     	
              <div class="form-group mb-4">
                <input type="text" id = "user_id" name="user_id" class="form-control" placeholder="ID" required/>
              </div>
              <div class="form-group mb-4">
                <input type="password"  id = "user_password" name="user_password" class="form-control" placeholder="Password" required/>
              </div>
              	<div class="join-wrap" style="color: rgba(241, 19, 123, 0.863);padding-bottom: 15px; font-size: 13px;">
                        <a href="${commonURL}/User/signup">????????????</a>&nbsp;&nbsp;&nbsp;
                         <a href="${commonURL}/User/findid">????????? ??????</a>&nbsp;&nbsp;&nbsp;
                        <a href="${commonURL}/User/findpwd">???????????? ??????</a>
                    </div>
          	
              <div class="form-group mb-0">
                <button type="button" class="btn btn-secondary" onclick="Login()">Login</button>
              </div>
            </form>
          </div>
          <div class="tm-bg-gray tm-contact-right">
           

             <div>
               <h2 class="tm-media-2-header tm-text-pink-dark mb-3">Our Location</h2>
               <address class="mb-4">
                 990 Maecenas lobortis dolor,<br>
                 Euismod leo, scelerisque <br>
                 10550 finibus
               </address>
                <p class="mb-0">Tel: <a href="tel:+0100200980" class="tm-link-gray">010-020-0980</a></p>
                <p class="mb-0">Fax: <a href="tel:+0900800770" class="tm-link-gray">090-080-0770</a></p>
             </div>
          </div>
        </div>
      </div>

      <!-- Bottom links -->
      <div class="row tm-about-row tm-mb-medium">
        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 mb-4">
          <h4 class="mb-4 tm-font-300">Latest Albums</h4>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Sed fringilla consectetur</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Mauris porta nisl quis</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Quisque maximus quam nec</a>
          <a href="#" class="tm-text-blue-dark d-block">Class aptent taciti sociosqu ad</a>
        </div>
        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 mb-4">
          <h4 class="mb-4 tm-font-300">Our Pages</h4>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Nam dapibus imperdiet</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Primis in faucibus orci</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Sed interdum blandit dictum</a>
          <a href="#" class="tm-text-blue-dark d-block">Donec non blandit nisl</a>
        </div>
        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
          <h4 class="mb-4 tm-font-300">Quick Links</h4>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Nullam scelerisque mauris</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Vivamus tristique enim non orci</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Luctus et ultrices posuere</a>
          <a href="#" class="tm-text-blue-dark d-block">Cubilia Curae</a>
        </div>
      </div>
      <footer class="row tm-about-row">
        <div class="col-xl-12">
          <p class="text-center p-4">Copyright &copy; <span class="tm-current-year">2018</span> Your Company Name 
          
          - Design:  Tooplate</p>
        </div>
      </footer>
    </div> <!-- .container -->

  </div> <!-- .main -->

  <!-- load JS -->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.slim.min.js"></script> <!-- https://jquery.com/ -->
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>         <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

    
    window.onload = function(){
    	var texts =['??????','??????','','??????', '??????', '?????????'];
    	if('<%=key%>' !=""){
    	let key = '<%=key%>';
    	document.getElementById("searchItem").innerHTML = texts[key];
    	}else{
    	document.getElementById("searchItem").innerHTML = texts[0];
    	}
    }
    
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
        	  alert("????????? ???????????????.");
              location.href="${commonURL}/"; //?????????????????? ????????????  
          }else if(result.flag ==2){
        	  alert("???????????? ?????? ??? ????????????.");
          }else{
        	  alert("??????????????? ???????????? ????????????.");
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

    function changeSearch(id){

    	var texts =['','??????','','??????', '??????', '?????????'];
    	document.getElementById("searchItem").innerHTML = texts[id];
    	document.getElementById("key").value = id;
    	document.getElementById("keyword").value= "";
    }
    
    function gosearch(){
    	if(document.getElementById("key").value ==0){
    		alert("??????????????? ??????????????????.");
    		return false;
    	}
    	let frm = document.myform;
    	frm.pg.value=0;
    	frm.action = "<%=request.getContextPath()%>/PLAY_Review/list";
    	frm.method ="GET";
    	frm.submit();
    }

  </script>
</body>
</form>
</html>

