<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.NOTICE.*" %>
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
	 <form id ="writeform"name ="writeform" method="post" enctype = "multipart/form-data">

<%
 		NoticeDto dto = (NoticeDto)request.getAttribute("reviewDto");
		
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
          <i class="fas tm-fa-big fa-music tm-fa-mb-big"></i>
          <h1 class="text-uppercase mb-3 tm-site-name">Insertion</h1>
          <p class="tm-site-description">New HTML Website Template</p>
        </div>
      </div>

    </div>

    <div class="container">
		 <%@include file="../include/search.jsp" %>

      <div class="row tm-mt-big tm-about-row tm-mb-medium">
        <div class="col-xl-12 col-lg-12 col-md-12 col-xs-12 tm-contact-col">
          <div class="tm-contact-left tm-bg-pink-light-2 tm-text-white text-right p-md-5 p-4">
            <i class="fas fa-3x fa-comments mb-4"></i>
            <h2 class="tm-media-2-header">?????? ??????</h2>
          </div>
          <div class="tm-bg-gray tm-contact-middle">
           
                <input type ="hidden" id = userid name = userid value ="<%=user_id%>">
                <input type ="hidden" id = notice_key name = notice_key value ="<%=dto.getNotice_key()%>">
    
              <div class="form-group mb-4">
                <input type="text" id = "notice_title" name = "notice_title" value ="<%=dto.getNotice_title()%>" class="form-control" placeholder="??????" required/>
              </div>
               <div class="form-group mb-4">
                <input type="text" id = "notice_id" name = "notice_id" value ="<%=user_id%>" class="form-control" placeholder="??????" readonly/>
              </div>

                 <div class="form-group mb-4">
                <textarea rows="8" id="editor" name="editor" class="form-control" placeholder="????????? ???????????????" required></textarea>
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
                <input type="hidden" id= "notice_contents" name ="notice_contents" class="form-control" placeholder="Full Name" required/>
              </div>
              
           

           
              <div class="form-group mb-0">
                <button type="button" class="btn btn-secondary" onclick ="add()">??????</button>
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
    </form>
</body>
</html>

<script>

window.onload = function(){
	   CKEDITOR.editorConfig = function(config){
		   config.enterMode = CKEDITOR.ENTER_BR
	   };
	   CKEDITOR.instances.editor.setData('<%=dto.getNotice_contents()%>');
	

		var texts =['??????','??????','','??????', '??????', '?????????'];
		if('<%=key%>' !=""){
		let key = '<%=key%>';
		document.getElementById("searchItem").innerHTML = texts[key];
		}else{
		document.getElementById("searchItem").innerHTML = texts[0];
		}

};

function changeSearch(id){
	
	var texts =['','??????','','??????', '??????', '?????????'];
	document.getElementById("searchItem").innerHTML = texts[id];
	document.getElementById("key").value = id;
	document.getElementById("keyword").value= "";
}


function add(){
	
	   $("#notice_contents").val(CKEDITOR.instances.editor.getData());
		
	   var frm = document.writeform
	   //var frmData = new FormData(document.writeform); 
		frm.action = "<%=request.getContextPath()%>/notice/save";
		frm.method = "post";
		frm.submit();
		

}
function gosearch(){
	if(document.getElementById("key").value ==0){
		alert("??????????????? ??????????????????.");
		return false;
	}
	let frm = document.writeform;
	frm.pg.value=0;
	frm.action = "<%=request.getContextPath()%>/PLAY_Review/list";
	frm.method ="GET";
	frm.submit();
}
	
	
</script>


