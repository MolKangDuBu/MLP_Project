<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
        <%@page import="mlp.project.lollipop.CAFE_REVIEW.*" %>
            <%@page import="mlp.project.lollipop.common.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>카페-게시글</title>
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

 	 Cafe_ReviewDto dto = (Cafe_ReviewDto)request.getAttribute("Cafe_ReviewDto");

%>
<!-- key=카페&pg=0&review_id=&review_key=0&keyword=&review_category=2 -->

 <input type="hidden" name="review_key" id="review_key" value="<%=dto.getReview_key() %>" />
 <input type="hidden" name="store_key" id="store_key" value="<%=dto.getStore_key() %>" />
 <input type="hidden" name="review_id" id="review_id" value="<%=dto.getReview_id() %>" />
 <input type="hidden" name="review_category" id="review_category" value="2" />


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
     
     
     				<!-- 검색창 -->
	 	<div class="container">
	  <%@include file="../include/search.jsp" %>

     <div class="row tm-about-row tm-mt-big tm-mb-medium">
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 tm-about-col-left">
          <div class="tm-v-center tm-bg-gray h-50 tm-about-text">
            <h1 class="tm-text-brown mb-4 tm-about-h1"><%=dto.getReview_title() %></h1>
          </div>
          <div class="tm-v-center2 tm-bg-gray h-50 tm-about-text">
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
     <% if(dto.getReview_image1()!=null && !dto.getReview_image1().equals("")){%>
    <div class="carousel-item active">
      <img src="${pageContext.request.contextPath}/upload/<%=dto.getReview_image1()%>"  height = "336px" width = "560px" alt="이미지">
    </div>
    <%} %>
     <% if(dto.getReview_image2()!=null && !dto.getReview_image2().equals("")){%>
    <div class="carousel-item">
      <img src="${pageContext.request.contextPath}/upload/<%=dto.getReview_image2()%>"  height = "336px" width = "560px" alt="이미지">
    </div>
    <%} %>
     <% if(dto.getReview_image3()!=null && !dto.getReview_image3().equals("")){%>
    <div class="carousel-item">
      <img src="${pageContext.request.contextPath}/upload/<%=dto.getReview_image3()%>"  height = "336px" width = "560px" alt="이미지">
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
  
  <div class="row tm-about-row tm-mb-medium">
        <div class="tm-tab-links-container">
    
          <ul class="nav nav-tabs" id="tmTab" role="tablist">
            <li class="nav-item">
              <a class="nav-link tm-bg-gray tm-media-v-center tm-tab-link active" id="home-tab" data-toggle="tab" href="#tab1" role="tab" aria-controls="home" aria-selected="true">
				<img src="${pageContext.request.contextPath}/resources/img/writer.png"  height="50px" width="50px" alt="Image" class="img-fluid">
                <i class="fas fa-2x pr-4"></i>
                <p class="media-body mb-0 tm-media-link">작성자</p>
                
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link tm-bg-gray tm-media-v-center tm-tab-link" id="profile-tab" data-toggle="tab" href="#tab2" role="tab" aria-controls="profile" aria-selected="false">
                <img src="${pageContext.request.contextPath}/resources/img/wdate.png"  height="50px" width="50px" alt="Image" class="img-fluid">
                <i class="fab fa-2x pr-4"></i>
                <p class="media-body mb-0 tm-media-link">작성일</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link tm-bg-gray tm-media-v-center tm-tab-link" id="contact-tab" data-toggle="tab" href="#tab3" role="tab" aria-controls="contact" aria-selected="false">
                <img src="${pageContext.request.contextPath}/resources/img/waddress.png"  height="50px" width="50px" alt="Image" class="img-fluid">
                <i class="fab fa-2x pr-4"></i>
                <p class="media-body mb-0 tm-media-link">주소</p>
               </a>
            </li>
          </ul>
        </div>
        
        <div class="tm-tab-content-container">
          
          <div class="tab-content h-100 tm-bg-gray" id="myTabContent">
            <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
              <div class="media tm-media-2">
                              <img src="${pageContext.request.contextPath}/resources/img/writer.png" height="100px" width="100px" alt="Image" class="img-fluid">
                <i class="fas fa-5x mb-3 tm-text-pink-dark tm-media-2-icon"></i>

                <div class="media-body tm-media-body-2">
                  <h2 class="mb-4 tm-text-pink-dark tm-media-2-header">작성자</h2>
                  <p class="mb-4"><%=dto.getReview_id() %></p>
                </div>
              </div>
            </div>
            
            <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab2-tab">
              <div class="media tm-media-2">
                              <img src="${pageContext.request.contextPath}/resources/img/wdate.png" height="100px" width="100px" alt="Image" class="img-fluid">
                <i class="fas fa-5x mb-3 tm-text-pink-dark tm-media-2-icon"></i>

                <div class="media-body tm-media-body-2">
                  <h2 class="mb-4 tm-text-pink-dark tm-media-2-header">작성일</h2>
                  <p class="mb-4"><%=dto.getReview_wdate() %></p>
                 </div>
              </div>
            </div>
            
            <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab3-tab">
              <div class="media tm-media-2">
                              <img src="${pageContext.request.contextPath}/resources/img/waddress.png" height="100px" width="100px" alt="Image" class="img-fluid">
                <i class="fas fa-5x mb-3 tm-text-pink-dark tm-media-2-icon"></i>

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
                     onclick="goModify()">수정</button>
                     <button class="btn btn-secondary" type="button"
                     onclick="goDelete()">삭제</button>
             	<%} %>
           	   	 	<button type = "button" onclick="goList()" class="btn btn-secondary">목록</button>
               </div>
    </div>
    
      <footer class="row">
        <div class="col-xl-12">
          <p class="text-center p-4">Copyright &copy; <span class="tm-current-year">2018</span> Lollipop Inc. All rights reserved.
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
	

}

function changeSearch(id){
	
	var texts =['','전체보기','','음식', '카페', '놀거리'];
	document.getElementById("searchItem").innerHTML = texts[id];
	document.getElementById("key").value = id;
	document.getElementById("keyword").value= "";
}

function goStore(store_key){
	console.log($("#store_key").val());
	 var frm = document.viewform
	 frm.store_key.value=store_key;
	 frm.action ="<%=request.getContextPath()%>/Store/view";
}

 function goList()
{	
	 location.href="<%=request.getContextPath()%>/Cafe_Review/list";
}

function goReviewList()
{
	var frm = document.viewform;	
	frm.action="<%=request.getContextPath()%>/Cafe_Review/Reviewlist"
	frm.submit();
}

function goModify()
{
	var frm = document.viewform;
	frm.action="<%=request.getContextPath()%>/Cafe_Review/modify";
	frm.submit();
}


function goDelete()
{
	var frm = document.viewform
	frm.action = "<%=request.getContextPath()%>/Cafe_Review/delete";
	frm.method = "post";
	frm.submit();	
}
function gosearch(){
	if(document.getElementById("key").value ==0){
		alert("카테고리를 선택해주세요.");
		return false;
	}
	let frm = document.viewform;
	frm.pg.value=0;
	frm.action = "<%=request.getContextPath()%>/Cafe_Review/list";
	frm.method ="GET";
	frm.submit();
}

</script>
