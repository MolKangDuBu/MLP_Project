<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "mlp.project.lollipop.common.*" %>
    <%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.TODAY_REVIEW.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Insertion HTML5 Template</title>
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
<form id ="listform" name ="listform" >
  <!-- Loader -->
  <div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
  </div>

  <div class="tm-main">

   <div class="tm-welcome-section">
    <%@include file="./include/nav.jsp" %>
 
   
      <div class="container text-center tm-welcome-container">
        <div class="tm-welcome">
          <i class="fas tm-fa-big fa-music tm-fa-mb-big"></i>
          <h1 class="text-uppercase mb-3 tm-site-name"></h1>
          <p class="tm-site-description"></p>
        </div>
      </div>

    </div>

    <div class="container">
	    <%@include file="./include/search.jsp" %>

      <div class="row tm-albums-container grid">
       <div class="col-sm-6 col-12 col-md-6 col-lg-3 col-xl-3 tm-album-col">
          <a href="${commonURL}/Today/list"> <figure class="effect-sadie">
            <img src="${pageContext.request.contextPath}/resources/img/insertion-260x390-01.jpg" alt="Image" class="img-fluid">
            <figcaption>
              <h2>오늘의 팝딜</h2>
              <p>Rollover text and description text goes here over mouse over...</p>
            </figcaption>
          </figure></a>
        </div>
        <div class="col-sm-6 col-12 col-md-6 col-lg-3 col-xl-3 tm-album-col">
           <a href="${commonURL}/FOOD_Review/list"><figure class="effect-sadie">
            <img src="${pageContext.request.contextPath}/resources/img/insertion-260x390-02.jpg" alt="Image" class="img-fluid">
            <figcaption>
              <h2>음식</h2>
              <p>Maecenas iaculis et turpis et iaculis. Aenean at volutpat diam.</p>
            </figcaption>
          </figure></a>
        </div>
        <div class="col-sm-6 col-12 col-md-6 col-lg-3 col-xl-3 tm-album-col">
           <a href="${commonURL}/Cafe_Review/list"><figure class="effect-sadie">
            <img src="${pageContext.request.contextPath}/resources/img/insertion-260x390-03.jpg" alt="Image" class="img-fluid">
            <figcaption>
              <h2>카페</h2>
              <p>Vivamus eget elit purus. Nullam consectetur porttitor elementum.</p>
            </figcaption>
          </figure></a>
        </div>
        <div class="col-sm-6 col-12 col-md-6 col-lg-3 col-xl-3 tm-album-col">
          <a href="${commonURL}/PLAY_Review/list"><figure class="effect-sadie">
            <img src="${pageContext.request.contextPath}/resources/img/insertion-260x390-04.jpg" alt="Image" class="img-fluid">
            <figcaption>
              <h2>놀거리</h2>
              <p>Praesent nec feugiat dolor, elementum mollis purus. Etiam faucibus.</p>
            </figcaption>
          </figure>
        </div>
      </div>



      <div class="row tm-mb-big tm-subscribe-row">
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 tm-bg-gray tm-subscribe-form">
          <h3 class="tm-text-pink tm-mb-30">Subscribe our updates!</h3>
          <p class="tm-mb-30">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi semper, ligula et pretium porttitor, leo orci accumsan ligula.</p>
          <div>
            <div class="form-group mb-0">
              <input type="text" class="form-control tm-subscribe-input" placeholder="Your Email">
              <input type="submit" value="Submit" class="tm-bg-pink tm-text-white d-block ml-auto tm-subscribe-btn">
            </div>
          </div>
        </div>
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 img-fluid pl-0 tm-subscribe-img"></div>
      </div>

      <div class="row tm-mb-medium">
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
      <footer class="row">
        <div class="col-xl-12">
          <p class="text-center p-4">Copyright &copy; <span class="tm-current-year">2018</span> Your Company Name 
          
          - Design:  Tooplate</p>
        </div>
      </footer>
    </div> <!-- .container -->

  </div> <!-- .main -->
</form>
  <!-- load JS -->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.slim.min.js"></script> <!-- https://jquery.com/ -->
  <script>

    /* DOM is ready*/
  $(function () {

      if (renderPage) {
        $('body').addClass('loaded');
      }

      $('.tm-current-year').text(new Date().getFullYear());  // Update year in copyright
    });

    



  </script>
</body>
</html>
<script>
window.onload = function(){
	 
		var texts =['선택','전체','','음식', '카페', '놀거리'];
		if('<%=key%>' !=""){
		let key = '<%=key%>';
		document.getElementById("searchItem").innerHTML = texts[key];
		}else{
		document.getElementById("searchItem").innerHTML = texts[0];
		}
 }
 
 function changeSearch(id){
		console.log("wwww");
		var texts =['','전체','','음식', '카페', '놀거리'];
		document.getElementById("searchItem").innerHTML = texts[id];
		document.getElementById("key").value = id;
		document.getElementById("keyword").value= "";
	}
 
 function gosearch(){
		if(document.getElementById("key").value ==0){
			alert("카테고리를 선택해주세요.");
			return false;
		}
		let frm = document.listform;
		frm.pg.value=0;
		frm.action = "<%=request.getContextPath()%>/PLAY_Review/list";
		frm.method ="GET";
		frm.submit();
	}
</script>