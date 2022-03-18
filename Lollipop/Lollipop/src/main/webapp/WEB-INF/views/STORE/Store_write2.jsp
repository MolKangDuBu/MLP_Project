<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.STORE.*" %>
<%@page import ="mlp.project.lollipop.common.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Insertion - Contact Page</title>
<!--

Template 2101 Insertion

http://www.tooplate.com/view/2101-insertion

-->
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
  <script src="//cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
<script type="text/javascript" src="/lollipop/ckfinder/ckfinder.js"></script>
</head>

<body>
	
    <%@include file="../include/nav.jsp" %>
<%
 		StoreDto dto = (StoreDto)request.getAttribute("StoreDto");
		
    %>

  <!-- Loader -->
  <div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
  </div>

  <div class="tm-main">

    <div class="tm-welcome-section">
      <div class="container tm-navbar-container">
        <div class="row">
          <div class="col-xl-12">
            <nav class="navbar navbar-expand-sm">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                  <a href="index.html" class="nav-link tm-nav-link tm-text-white">Home</a>
                </li>
                <li class="nav-item active">
                  <a href="about.html" class="nav-link tm-nav-link tm-text-white">About</a>
                </li>
                <li class="nav-item">
                  <a href="contact.html" class="nav-link tm-nav-link tm-text-white active">Contact</a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>

      <div class="container text-center tm-welcome-container">
        <div class="tm-welcome">
          <i class="fas tm-fa-big fa-music tm-fa-mb-big"></i>
          <h1 class="text-uppercase mb-3 tm-site-name">Insertion</h1>
          <p class="tm-site-description">New HTML Website Template</p>
        </div>
      </div>

    </div>

    <div class="container">
      <div class="tm-search-form-container">
        <form action="index.html" method="GET" class="form-inline tm-search-form">
          <div class="text-uppercase tm-new-release">New Release</div>
          <div class="form-group tm-search-box">
            <input type="text" name="keyword" class="form-control tm-search-input" placeholder="Type your keyword ...">
            <input type="submit" value="Search" class="form-control tm-search-submit">
          </div>
          <div class="form-group tm-advanced-box">
            <a href="#" class="tm-text-white">Go Advanced ...</a>
          </div>
        </form>
      </div>

      <div class="row tm-mt-big tm-about-row tm-mb-medium">
        <div class="col-xl-12 col-lg-12 col-md-12 col-xs-12 tm-contact-col">
          <div class="tm-contact-left tm-bg-pink-light-2 tm-text-white text-right p-md-5 p-4">
            <i class="fas fa-3x fa-comments mb-4"></i>
            <h2 class="tm-media-2-header">가게 등록</h2>
          </div>
          <div class="tm-bg-gray tm-contact-middle">
            <form id ="writeform"name ="writeform" method="post" enctype = "multipart/form-data">
                <input type ="hidden" id = userid name = userid value ="<%=user_id%>">
    			<input type ="hidden" id = store_key name = store_key value ="<%=dto.getStore_key()%>">
              <div class="form-group mb-4">
                <input type="text" id = "Store_name" name = "Store_name" value ="<%=dto.getStore_name()%>" class="form-control" placeholder="가게명" required/>
              </div>
              <div class="form-group mb-4">
                <input type="text" id = "Store_bnumber" name ="Store_bnumber" value ="<%=dto.getStore_bnumber()%>" class="form-control" placeholder="사업자 번호" required/>
              </div>
              <div class="form-group mb-4">
                <input type="text" id ="Store_number" name = "Store_number" value ="<%=dto.getStore_number()%>" class="form-control" placeholder="가게 번호" required/>
              </div>
              <div class="form-group mb-4">
                <input type="text" id="Store_address" name ="Store_address" value ="<%=dto.getStore_address()%>" class="form-control" placeholder="가게 주소" required/>
              </div>
                   <div class="form-group mb-4">
                <select name="position" class="tm-select" id="position" required>
                  <option value="">선택하세요</option>
                  <option value="1">음식</option>
                  <option value="2">카페</option>
                  <option value="3">놀거리</option>
                </select>
              </div>
              <div class="form-group mb-4">
                <input type="hidden" id ="Store_category" name ="Store_category" value = "<%=dto.getStore_category()%>"class="form-control" placeholder="Full Name" required/>
              </div>
            
                 <div class="form-group mb-4">
                <textarea rows="8" id="editor" name="editor" class="form-control" placeholder="내용을 입력하세요" required></textarea>
              </div>
              <script>
							var editor = CKEDITOR.editorConfig = function( config ) {
								config.language = 'es';
								config.uiColor = '#F7B42C';
								config.height = 300;
								config.toolbarCanCollapse = true;
								config.extraPlugins = 'uploadimage';
							};

							var editor = CKEDITOR.replace( 'editor' );
							CKFinder.setupCKEditor( editor, '/lollipop/ckfinder' ) ;
							
			</script>
			  <div class="form-group mb-4">
                <input type="hidden" id= "Store_info" name ="Store_info" class="form-control" placeholder="Full Name" required/>
              </div>
              
           

           
              <div class="form-group mb-0">
                <button type="button" class="btn btn-secondary" onclick ="add()">등록</button>
              </div>
            
          </div>
          <div class="tm-bg-gray tm-contact-right">
        	<div class="form-group mb-4">
                <input type="file"  id = "upload1" name = "upload1" class="form-control" placeholder="썸네일1" required/>
              </div>
              <div class="form-group mb-4">
                <input type="file" id="upload2" name = "upload2" class="form-control" placeholder="썸네일2" required/>
              </div>
              <div class="form-group mb-4">
                <input type="file" id ="upload3" name = "upload3" class="form-control" placeholder="썸네일3" required/>
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
        </form>
      </footer>
    </div> <!-- .container -->

  </div> <!-- .main -->

  <!-- load JS -->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.slim.min.js"></script> <!-- https://jquery.com/ -->
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>         <!-- https://getbootstrap.com/ -->
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
</html>

<script>
window.onload = function(){
	 CKEDITOR.editorConfig = function(config){
		   config.enterMode = CKEDITOR.ENTER_BR
		   
	   };
	   CKEDITOR.instances.editor.setData('<%=dto.getStore_info()%>')
	
	   
	   var texts =['선택하세요', '음식', '카페', '놀거리'];
	   
	   $("#position").val("<%=dto.getStore_category()%>").prop("selected", true)  
		document.getElementById("Store_category").value = <%=dto.getStore_category()%>
	    
	 
	 };
	function add(){
		
		   $("#Store_info").val(CKEDITOR.instances.editor.getData());
		   $("#Store_category").val($("#position").val());
		   var frm = document.writeform
		   //var frmData = new FormData(document.writeform); 
			frm.action = "<%=request.getContextPath()%>/Store/save";
			frm.method = "post";
			frm.submit();
			

	}
	
</script>


