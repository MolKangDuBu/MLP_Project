<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.PLAY_REVIEW.*" %>
<%@page import ="mlp.project.lollipop.common.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>놀거리-글쓰기</title>
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
 		PLAY_ReviewDto dto = (PLAY_ReviewDto)request.getAttribute("reviewDto");
		String bnumer = StringUtil.nullToValue(request.getAttribute("bnumber"), "");
    %>
	      	<input type = "hidden" name = "store_key" id = "store_key" value = "<%=bnumer%>"/>
	      	<input type = "hidden" name = "category" id = "category" value = "<%=dto.getReview_category()%>"/>
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
            <h2 class="tm-media-2-header">리뷰 등록</h2>
          </div>
          <div class="tm-bg-gray tm-contact-middle">
        
                <input type ="hidden" id = userid name = userid value ="<%=user_id%>">
    			<input type ="hidden" id = review_key name = review_key value ="<%=dto.getReview_key()%>">
              <div class="form-group mb-4">
                <input type="text" id = "Review_title" name = "Review_title" value ="<%=dto.getReview_title()%>" class="form-control" placeholder="제목" required/>
              </div>
              <div class="form-group mb-4">
                <input type="text" id = "Review_id" name ="Review_id" value ="<%=user_id%>" class="form-control" placeholder="이름" readonly/>
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
                <input type="hidden" id ="Review_category" name ="Review_category" value = "<%=dto.getReview_category()%>"class="form-control" placeholder="Full Name" required/>
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
                <input type="hidden" id= "Review_contents" name ="Review_contents" class="form-control" placeholder="Full Name" required/>
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
	   CKEDITOR.instances.editor.setData('<%=dto.getReview_contents()%>')
	   $("#position").val("<%=dto.getReview_category()%>").prop("selected", true);  
	   document.getElementById("Review_category").value = <%=dto.getReview_category()%>


		var texts =['선택','전체보기','','음식', '카페', '놀거리'];
		if('<%=key%>' !=""){
		let key = '<%=key%>';
		document.getElementById("searchItem").innerHTML = texts[key];
		}else{
		document.getElementById("searchItem").innerHTML = texts[0];
		}


	 
};
function add(){
	
	   $("#Review_contents").val(CKEDITOR.instances.editor.getData());
	   $("#Review_category").val($("#position").val());
	   var frm = document.writeform
	   //var frmData = new FormData(document.writeform); 
		frm.action = "<%=request.getContextPath()%>/PLAY_Review/save";
		frm.method = "post";
		frm.submit();
		

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
	let frm = document.writeform;
	frm.pg.value=0;
	switch(	document.getElementById("key").value){
	case 1:
		frm.action = "<%=request.getContextPath()%>/FOOD_Review/list";
		break;
	case 2:
		frm.action = "<%=request.getContextPath()%>/Cafe_Review/list";
		break;
	case 3:
		frm.action = "<%=request.getContextPath()%>/PLAY_Review/list";
		break;
		
	}
	
	
	frm.method ="GET";
	frm.submit();
}
	
</script>


