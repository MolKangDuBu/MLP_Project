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
          <p class="fas tm-fa-big tm-fa-mb-big">
          <img src="${pageContext.request.contextPath}/resources/img/main.png" alt="Image" class="img-fluid">
          Lollipop</p>
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
            <img src="${pageContext.request.contextPath}/resources/img/insertion-260x390-011.jpg" alt="Image" class="img-fluid">
            <figcaption>
              <h2>오늘의 팝딜</h2>
              <p>지금 가장 인기 있는 데이트 명소를 소개해 드립니다 !</p>
            </figcaption>
          </figure></a>
        </div>
        <div class="col-sm-6 col-12 col-md-6 col-lg-3 col-xl-3 tm-album-col">
           <a href="${commonURL}/FOOD_Review/list"><figure class="effect-sadie">
            <img src="${pageContext.request.contextPath}/resources/img/insertion-260x390-022.jpg" alt="Image" class="img-fluid">
            <figcaption>
              <h2>맛집</h2>
              <p>즐거운 데이트를 위한 맛집 탐방을 계획해보세요.</p>
            </figcaption>
          </figure></a>
        </div>
        <div class="col-sm-6 col-12 col-md-6 col-lg-3 col-xl-3 tm-album-col">
           <a href="${commonURL}/Cafe_Review/list"><figure class="effect-sadie">
            <img src="${pageContext.request.contextPath}/resources/img/insertion-260x390-033.jpg" alt="Image" class="img-fluid">
            <figcaption>
              <h2>카페</h2>
              <p>맛과 분위기, 당신의 취향을 저격하겠습니다.</p>
            </figcaption>
          </figure></a>
        </div>
        <div class="col-sm-6 col-12 col-md-6 col-lg-3 col-xl-3 tm-album-col">
          <a href="${commonURL}/PLAY_Review/list"><figure class="effect-sadie">
            <img src="${pageContext.request.contextPath}/resources/img/insertion-260x390-044.jpg" alt="Image" class="img-fluid">
            <figcaption>
              <h2>놀거리</h2>
              <p>방탈출, 보드게임, 이색카페 등 다양한 놀거리들을 확인해보세요.</p>
            </figcaption>
          </figure></a>
        </div>
      </div>


      <footer class="row">
        <div class="col-xl-12">
          <p class="text-center p-4">Copyright &copy; <span class="tm-current-year">2018</span> Lollipop Inc. All rights reserved.
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
	 
		var texts =['선택','전체보기','','음식', '카페', '놀거리'];
		if('<%=key%>' !=""){
		let key = '<%=key%>';
		document.getElementById("searchItem").innerHTML = texts[key];
		}else{
		document.getElementById("searchItem").innerHTML = texts[0];
		}
 }
 
 function changeSearch(id){
		console.log("wwww");
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
		let frm = document.listform;
		frm.pg.value=0;
		frm.action = "<%=request.getContextPath()%>/PLAY_Review/list";
		frm.method ="GET";
		frm.submit();
	}
</script>