<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
        <%@page import="mlp.project.lollipop.NOTICE.*" %>
            <%@page import="mlp.project.lollipop.common.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                        rel="stylesheet">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet"
     href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,700&amp;display=swap">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

 <script src="//cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
 <script type="text/javascript" src="/lollipop/ckfinder/ckfinder.js"></script>

 <!-- load CSS -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">        <!-- Google web font "Open Sans" -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">                                            <!-- https://getbootstrap.com/ -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">                                      <!-- Font awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tooplate-style.css">
  
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
 <form name="viewform" id="viewform">

<%

int totalCnt = (Integer)request.getAttribute("totalCnt");
%>




 <input type="hidden" name="notice_key" id="notice_key" value="" />


 
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
          <h1 class="text-uppercase mb-3 tm-site-name">Lollipop</h1>
          <p class="tm-site-description">Enjoying is your powerful energy</p>
        </div>
      </div>
     </div>
     
     
     				<!-- ????????? -->
	 	<div class="container">
			  <%@include file="../include/search.jsp" %>
  <div class="row">
        <div class="col-lg-12">
          <div class="tm-tag-line">
          <h2 class="tm-tag-line-title">Store_board</h2>
          </div>
        </div>
      </div>

   <div class="row tm-about-row tm-mb-medium">
        <div class="tm-tab-links-container">
    
          <ul class="nav nav-tabs" id="tmTab" role="tablist">
            <li class="nav-item">
              <a class="nav-link tm-bg-gray tm-media-v-center tm-tab-link active" id="home-tab" data-toggle="tab" href="#tab1" role="tab" aria-controls="home" aria-selected="true">
                <i class="fas fa-2x fa-music pr-4"></i>
                <p class="media-body mb-0 tm-media-link">????????????</p>
              </a>
            </li>
              <%
				   List<NoticeDto> noticeList=(List<NoticeDto>)request.getAttribute("noticeList");
				   for(int i =2; i<(noticeList.size()+2); i++){
				   
				 %>  
            <li class="nav-item">
              <a class="nav-link tm-bg-gray tm-media-v-center tm-tab-link" id="profile-tab" data-toggle="tab" href="#tab<%=i%>" role="tab" aria-controls="profile" aria-selected="false">
                <i class="fab fa-2x fa-accusoft pr-4"></i>
                <p class="media-body mb-0 tm-media-link"><%=noticeList.get((i-2)).getNotice_title() %></p>
              </a>
            </li>
			<%} %>
          </ul>
        </div>
        
        <div class="tm-tab-content-container">
          
          <div class="tab-content h-100 tm-bg-gray" id="myTabContent">
            <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
              <div class="media tm-media-2">
                <i class="fas fa-5x fa-music mb-3 tm-text-pink-dark tm-media-2-icon"></i>
                <div class="media-body tm-media-body-2">
                  <h2 class="mb-4 tm-text-pink-dark tm-media-2-header">??????????????? ??????????????????</h2>
                  <p class="mb-4">??????????????? ??????????????????</p>
                </div>
              </div>
            </div>
            
            
             <%     	
		       for(int i =2; i<(noticeList.size()+2); i++){
		      %>   
            <div class="tab-pane fade" id="tab<%=i%>" role="tabpanel" aria-labelledby="tab<%=i%>-tab">
              <div class="media tm-media-2">
                <i class="fab fa-5x fa-accusoft mb-3 tm-text-pink-dark tm-media-2-icon"></i>
                <div class="media-body tm-media-body-2">
                  <h2 class="mb-4 tm-text-pink-dark tm-media-2-header"><%=noticeList.get((i-2)).getNotice_title() %></h2>
                  <p class="mb-4"><%=noticeList.get((i-2)).getNotice_contents() %></p>
                   <p>
              	 <%if(user_id.equals("admin")) {%>
        		   <button class="btn btn-secondary" type="button"
              		 onclick="goModify('<%=noticeList.get((i-2)).getNotice_key()%>')">??????</button>
               		<button class="btn btn-secondary" type="button"
             		  onclick="goDelete(<%=noticeList.get((i-2)).getNotice_key()%>)">??????</button>
         		<% } %></p>
                 </div>
              </div>
            </div>
            <%}%>
 

         	 </div>
           </div> <!-- .content container -->
           
                <div class="container mt-3" style="text-align:right;">
                                                               
                <%if(user_id.equals("admin")) {%>
                 <button class="btn btn-secondary" type="button"
                     onclick="goWrite()">????????????</button>
             	<%} %>
           	   		
               </div>
                  <div style="margin:0 auto">
       				 <%=Pager.makeTag(request, 10, totalCnt) %>
    		  </div>
    </div>

    
     <footer class="row">
              	  <div class="col-xl-12">                    
                        <div _ngcontent-sc92="" class="policy-links">
                            <a _ngcontent-sc92="" href="https://www.daangn.com"
                                target="_blank" class="daangn"> ????????? ???????????? </a> &nbsp; ?? &nbsp; 
                                <a _ngcontent-sc92="" href="https://www.daangn.com/policy/terms" target="_blank"> ???????????? </a> &nbsp; ?? &nbsp; 
                                <a _ngcontent-sc92="" href="https://www.daangn.com/policy/privacy" target="_blank"> ???????????? ???????????? </a> &nbsp; ?? &nbsp; 
                                <a _ngcontent-sc92="" href="https://www.daangn.com/policy/location" target="_blank"> ???????????? ????????? ???????????? </a>
                        </div>
                        <div _ngcontent-sc92="" class="emails"><span _ngcontent-sc92=""> ???????????? cs@lollipopservice.com
                            </span><span _ngcontent-sc92=""> ???????????? contact@lollipop.com </span><span _ngcontent-sc92="">
                                ???????????? ad@lollipop.com </span><span _ngcontent-sc92=""> PR?????? pr@lollipop.com </span>
                        </div>
                        <div _ngcontent-sc92="" class="other-info"> ??????????????? ????????? ????????????30??? 28, 609??? (????????? ?????????) ????????? ???????????? :
                            375-87-00088 ???????????????????????? ???????????? : J1200020200016 
                        </div>
                        <p class="text-center p-4">Copyright &copy; <span class="tm-current-year">2022</span> Lollipop Market Inc. All rights reserved.
                    </div>
                  </footer>
            </div><!-- .container -->

		</div> <!-- .main -->        
           

				
                  


  <!-- load JS -->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.slim.min.js"></script> <!-- https://jquery.com/ -->
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>         <!-- https://getbootstrap.com/ -->
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
	var texts =['??????','??????','','??????', '??????', '?????????'];
	if('<%=key%>' !=""){
	let key = '<%=key%>';
	document.getElementById("searchItem").innerHTML = texts[key];
	}else{
	document.getElementById("searchItem").innerHTML = texts[0];
	}
}


function changeSearch(id){
	
	var texts =['','??????','','??????', '??????', '?????????'];
	document.getElementById("searchItem").innerHTML = texts[id];
	document.getElementById("key").value = id;
	document.getElementById("keyword").value= "";
}

function goWrite(){
	var frm = document.viewform;
	frm.action="<%=request.getContextPath()%>/notice/write";
	frm.submit();
}


function goModify(id)
{
	
	var frm = document.viewform;
	frm.notice_key.value = id;
	frm.action="<%=request.getContextPath()%>/notice/modify";
	frm.submit();
}


function goDelete(id)
{
	var frm = document.viewform
	frm.notice_key.value = id;
	frm.action = "<%=request.getContextPath()%>/notice/delete";
	frm.method = "post";
	frm.submit();	
}
function gosearch(){
	if(document.getElementById("key").value ==0){
		alert("??????????????? ??????????????????.");
		return false;
	}
	let frm = document.viewform;
	frm.pg.value=0;
	frm.action = "<%=request.getContextPath()%>/PLAY_Review/list";
	frm.method ="GET";
	frm.submit();
}

</script>
