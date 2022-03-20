<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.FOOD_REVIEW.*" %>
<%@page import ="mlp.project.lollipop.common.*" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>맛집</title>
    <base href="/">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="og:locale" content="ko_KR">

    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,700&amp;display=swap">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=3147f31e8bf2124276d5308be9acdcbb&amp;autoload=false"></script>
    <link rel="stylesheet" href="styles.bda21ab4755c6260b522.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   	
   <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.slim.min.js"></script>
  	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">        
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">                                          
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">                                      
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tooplate-style.css">   
  	
  		<script>

    /* DOM is ready*/
  $(function () {

      if (renderPage) {
        $('body').addClass('loaded');
      }

      $('.tm-current-year').text(new Date().getFullYear());  // Update year in copyright
    });
 	</script>                                      

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
	
 <%

	int totalCnt = (Integer)request.getAttribute("totalCnt");
%>
<form name = "listform" id = "listform">
	<input type = "hidden" name = "review_key" id = "review_key" value ="0"/>

   		<!-- 섹션값 -->

	
				
		  <!-- Loader -->
	<div id="loader-wrapper">
    	<div id="loader"></div>
   		<div class="loader-section section-left"></div>
   		<div class="loader-section section-right"></div>
 	</div>
      
  <div class="tm-main">
   
 	<!-- Navigation -->
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
     
     
     				<!-- 검색창 -->
	 	<div class="container">
   				<%@include file="../include/search.jsp" %>
	      
	      <!-- 게시판명 -->
         <div class="row">
       		<div class="col-lg-12">
         	 <div class="tm-tag-line-food">
         	 <%String title = (String)request.getAttribute("title");
              if(title.equals("null") ) {%>
         	  <h2 class="tm-tag-line-title">맛집</h2>
       		 </div>
       		 <% }else{%>
       		  <h2 class="tm-tag-line-title"><%=title%></h2>
   		  	 <%} %>
      		</div>
     	 </div>
     	 
     	  <!-- 카테고리 --> 
		<input type = "hidden" id = review_category name = review_category value = '3'>
		
		
<!--  여기부터 리스트 추가 -->

          	  <div class="row mb-5">
    <div class="col-xl-12">
        <div class="media-boxes">
            <!-- 게시판 시작 -->
            <% List<FOOD_ReviewDto> list = (List<FOOD_ReviewDto>)request.getAttribute("ReviewList");

                    for(FOOD_ReviewDto tempDto : list){
                    %>
                    <div class="media">
                        <img 
                            src="${pageContext.request.contextPath}/upload/<%=tempDto.getReview_image1()%>" width="100px"
                            height="117px" alt="Image" class="mr-3">
                        <div class="media-body tm-bg-gray">
                            <div class="tm-description-box" >
                                <h5 class="tm-text-blue">
                                    <%=tempDto.getReview_title()%>
                                </h5>
                                <p class="mb-0">
                                </p>
                            </div>
                               <div class="tm-buy-box">
                
                                <a class="tm-bg-blue tm-text-white tm-buy"
                                    onclick="goView('<%=tempDto.getReview_key()%>')">View</a>
                                <span class="tm-text-blue tm-price-tag">
                                    <%=tempDto.getReview_hit()%>
                                </span>
                            </div>
                        </div>
                    </div>
                    <%} %>

        </div> <!-- media-boxes -->

    </div>
    <div style="margin:0 auto">
        <%=Pager.makeTag(request, 10, totalCnt) %>
    </div>
    <div class="container mt-3" style="text-align:right;">
        <a href="<%=request.getContextPath()%>/ocr/getkey" class="btn btn-secondary">글쓰기</a>
    </div>

</div>
          	  
          	  
          	  
          	  
          	  
          	       	 	 


      <footer class="row">
        <div class="col-xl-12">
          <p class="text-center p-4">Copyright &copy; <span class="tm-current-year">2018</span> Lollipop Inc. All rights reserved.
        </div>
      </footer>
    </div> <!-- .container -->

  </div> <!-- .main -->
            </div><!-- .container -->

		</div> <!-- .main -->        
        <!---->
   
</form>
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
	frm.action = "<%=request.getContextPath()%>/FOOD_Review/list";
	frm.method ="GET";
	frm.submit();
}

function goPage(pg){
	
	frm = document.listform;
	frm.pg.value = pg;
	frm.method = "get";
	frm.action = "${pageContext.request.contextPath}/FOOD_Review/list";
	frm.submit();
}

function goView(id){

	frm = document.listform;
	frm.review_key.value = id;
	frm.method = "get";
	frm.action = "${pageContext.request.contextPath}/FOOD_Review/view";
	frm.submit();
}
</script>

