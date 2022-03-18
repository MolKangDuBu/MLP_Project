<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@page import="java.util.*" %>
        <%@page import="mlp.project.lollipop.FOOD_REVIEW.*" %>
            <%@page import="mlp.project.lollipop.common.*" %>
                <!DOCTYPE html>
                <html lang="ko">

                <head>
                    <<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>음식 리뷰</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

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
 <%@include file ="../include/nav.jsp" %>
<%
	String keyword = StringUtil.nullToValue(request.getParameter("keyword"), "");
 	 FOOD_ReviewDto dto = (FOOD_ReviewDto)request.getAttribute("FOOD_ReviewDto");
%>

<!-- key=카페&pg=0&review_id=&review_key=0&keyword=&review_category=2 -->
 <form name="writeform" id="writeform" method="post" enctype="multipart/form-data">
 <input type="hidden" name="review_key" id="review_key" value="<%=dto.getReview_key() %>" />
 <input type="hidden" name="store_key" id="store_key" value="<%=dto.getStore_key() %>" />
 <input type="hidden" name="review_id" id="review_id" value="<%=dto.getReview_id() %>" />
 <input type="hidden" name="review_category" id="review_category" value="1" />
 <input type="hidden" name="key" id="key" value="" />
 </form>

<!-- Loader -->
  <div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
  </div>
  
  <div class="tm-main">
	<!-- navbar -->
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
                  <a href="about.html" class="nav-link tm-nav-link tm-text-white active">About</a>
                </li>
                <li class="nav-item">
                  <a href="contact.html" class="nav-link tm-nav-link tm-text-white">Contact</a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>

      <div class="container text-center tm-welcome-container">
        <div class="tm-welcome">
          <i class="fas tm-fa-big fa-music tm-fa-mb-big"></i>
          <h1 class="text-uppercase mb-3 tm-site-name">Lollipop</h1>
          <p class="tm-site-description">Enjoying is your powerful energy</p>
        </div>
      </div>
     </div>
     
     
     				<!-- 검색창 -->
	 	<div class="container">
	      <div class="tm-search-form-container">
	        <form  method="GET" class="form-inline tm-search-form">
	          <div class="text-uppercase tm-new-release">
	          	<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" id="searchItem">New Release</button>
       		   <ul class="dropdown-menu">
		          <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('1')">전체</a></li>
	              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('3')">음식</a></li>
	              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('4')">카페</a></li>
	              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('5')">놀거리</a></li>
	           </ul>
              </div>
       		  
	          <div class="form-group tm-search-box">
	            <input type="search" name="keyword" class="form-control tm-search-input" placeholder="제목, 내용 검색" 
	            value="<%=keyword %>" name="keyword" id="keyword">
	            <div onclick="goSearch()">
	            <input type="submit" value="Search" class="form-control tm-search-submit" onclick = "goSearch()">
	            </div>
	          </div>
	          <div class="form-group tm-advanced-box">
	            <a href="#" class="tm-text-white">Go Advanced ...</a>
	          </div>
	        </form>
	      </div> 			
      
      <!-- Carousel -->
		<div class="row tm-about-row tm-mt-big tm-mb-medium">
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 tm-about-col-left">
          <div class="tm-v-center tm-bg-gray h-100 tm-about-text">
            <h2 class="tm-text-brown mb-4 tm-about-h2"><%=dto.getReview_contents() %></h2>
          </div>
        </div>			
                    
      <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
        
     <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
     <% if(dto.getReview_image1()!=null){%>
    <div class="carousel-item active">
      <img src="${pageContext.request.contextPath}/upload/<%=dto.getReview_image1()%>"  height = "336px" width = "560px" alt="Los Angeles">
    </div>
    <%} %>
     <% if(dto.getReview_image2()!=null){%>
    <div class="carousel-item">
      <img src="${pageContext.request.contextPath}/upload/<%=dto.getReview_image2()%>"  height = "336px" width = "560px" alt="Los Angeles">
    </div>
    <%} %>
     <% if(dto.getReview_image3()!=null){%>
    <div class="carousel-item">
      <img src="${pageContext.request.contextPath}/upload/<%=dto.getReview_image3()%>"  height = "336px" width = "560px" alt="Los Angeles">
    </div>
    <%} %>
  </div>
  
   <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
				</div>
			</div>
		</div> 
		      
		<!-- content -->
	<div class="row tm-about-row tm-mb-medium">
        <div class="tm-tab-links-container">
    
          <ul class="nav nav-tabs" id="tmTab" role="tablist">
            <li class="nav-item">
              <a class="nav-link tm-bg-gray tm-media-v-center tm-tab-link active" id="home-tab" data-toggle="tab" href="#tab1" role="tab" aria-controls="home" aria-selected="true">
                <i class="fas fa-2x fa-music pr-4"></i>
                <p class="media-body mb-0 tm-media-link">작성자</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link tm-bg-gray tm-media-v-center tm-tab-link" id="profile-tab" data-toggle="tab" href="#tab2" role="tab" aria-controls="profile" aria-selected="false">
                <i class="fab fa-2x fa-accusoft pr-4"></i>
                <p class="media-body mb-0 tm-media-link">작성일</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link tm-bg-gray tm-media-v-center tm-tab-link" id="contact-tab" data-toggle="tab" href="#tab3" role="tab" aria-controls="contact" aria-selected="false">
                <i class="fab fa-2x fa-amazon-pay pr-4"></i>
                <p class="media-body mb-0 tm-media-link">주소</p>
               </a>
            </li>
          </ul>
        </div>	
		
		 <div class="tm-tab-content-container">
          
          <div class="tab-content h-100 tm-bg-gray" id="myTabContent">
            <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
              <div class="media tm-media-2">
                <i class="fas fa-5x fa-music mb-3 tm-text-pink-dark tm-media-2-icon"></i>
                <div class="media-body tm-media-body-2">
                  <h2 class="mb-4 tm-text-pink-dark tm-media-2-header">작성자</h2>
                  <p class="mb-4"><%=dto.getReview_id() %></p>
                </div>
              </div>
            </div>
            
            <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab2-tab">
              <div class="media tm-media-2">
                <i class="fab fa-5x fa-accusoft mb-3 tm-text-pink-dark tm-media-2-icon"></i>
                <div class="media-body tm-media-body-2">
                  <h2 class="mb-4 tm-text-pink-dark tm-media-2-header">작성일</h2>
                  <p class="mb-4"><%=dto.getReview_wdate() %></p>
                 </div>
              </div>
            </div>
            
            <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab3-tab">
              <div class="media tm-media-2">
                <i class="fab fa-5x fa-amazon-pay mb-3 tm-text-pink-dark tm-media-2-icon"></i>
                <div class="media-body tm-media-body-2">
                  <h2 class="mb-4 tm-text-pink-dark tm-media-2-header">주소</h2>
                  <p class="mb-4"><%=dto.getReview_address() %></p>
                    <a href="#none"  onclick="goStore('<%=dto.getStore_key()%>')" class="btn btn-secondary">가게 보기</a>
                </div>
               </div>
            </div>

         	 </div>
           </div> <!-- .content container -->
		           
			 <div class="container mt-3" style="text-align:right;">
                                                               
                <%if(user_id.equals(dto.getReview_id())&&!user_id.equals("")) {%>
                 <button class="btn btn-secondary" type="button"
                     onclick="gomodify()">수정</button>
                     <button class="btn btn-secondary" type="button"
                     onclick="godelete()">삭제</button>
             	<%} %>
           	   		<a href="javascript:void(0);" onclick="goList()" class="btn btn-secondary">목록</a>
               </div>
    </div>
    
     <footer class="row">
              	  <div class="col-xl-12">                    
                        <div _ngcontent-sc92="" class="policy-links">
                            <a _ngcontent-sc92="" href="https://www.daangn.com"
                                target="_blank" class="daangn"> 롤리팝 홈페이지 </a> &nbsp; · &nbsp; 
                                <a _ngcontent-sc92="" href="https://www.daangn.com/policy/terms" target="_blank"> 이용약관 </a> &nbsp; · &nbsp; 
                                <a _ngcontent-sc92="" href="https://www.daangn.com/policy/privacy" target="_blank"> 개인정보 취급방침 </a> &nbsp; · &nbsp; 
                                <a _ngcontent-sc92="" href="https://www.daangn.com/policy/location" target="_blank"> 위치기반 서비스 이용약관 </a>
                        </div>
                        <div _ngcontent-sc92="" class="emails"><span _ngcontent-sc92=""> 고객문의 cs@lollipopservice.com
                            </span><span _ngcontent-sc92=""> 제휴문의 contact@lollipop.com </span><span _ngcontent-sc92="">
                                지역광고 ad@lollipop.com </span><span _ngcontent-sc92=""> PR문의 pr@lollipop.com </span>
                        </div>
                        <div _ngcontent-sc92="" class="other-info"> 서울특별시 구로구 디지털로30길 28, 609호 (롤리팝 서비스) 사업자 등록번호 :
                            375-87-00088 직업정보제공사업 신고번호 : J1200020200016 
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
                </body>

                </html>


<script>

 window.onload = function () {
 	console.log(<%=user_id%>)
 	console.log(<%=dto.getReview_id()%>)
 	console.log(<%=dto.getStore_key()%>);
 };
 
 function goList()
 {	
 	 location.href="<%=request.getContextPath()%>/Cafe_Review/list";
 }
 
 function gomodify() {
     var frm = document.writeform
     frm.action = "<%=request.getContextPath()%>/FOOD_Review/modify";
     frm.method = "post";
     frm.submit();


 }
 

 function godelete(){
	 var frm = document.writeform
     frm.action = "<%=request.getContextPath()%>/FOOD_Review/delete";
     frm.method = "post";
     frm.submit();
 }
</script>