<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.STORE.*" %>
<%@page import="mlp.project.lollipop.common.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>스토어-게시글</title>
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
<!-- load JS -->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.slim.min.js"></script> <!-- https://jquery.com/ -->
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>         <!-- https://getbootstrap.com/ -->
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
<form id ="viewform" name ="viewform">
 <% StoreDto dto=(StoreDto)request.getAttribute("StoreDto"); %>

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


<input type ="hidden" id = store_bnumber name =store_bnumber value="<%=dto.getStore_bnumber() %>">  
<input type ="hidden" id = store_key name =store_key value="<%=dto.getStore_key() %>">
<input type ="hidden" id = store_name name =store_name value="<%=dto.getStore_name() %>">
<input type ="hidden" id =store_category name =store_category value ="<%=dto.getStore_category()%>">

     <div class="row tm-about-row tm-mt-big tm-mb-medium">
        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 tm-about-col-left">
          <div class="tm-v-center tm-bg-gray h-50 tm-about-text">
            <h1 class="tm-text-brown mb-4 tm-about-h1"><%=dto.getStore_name() %></h1>
          </div>
          <div class="tm-v-center2 tm-bg-gray h-50 tm-about-text">
            <h2 class="tm-text-brown mb-4 tm-about-h2"><%=dto.getStore_info() %></h2>
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
     <% if(dto.getStore_image1()!=null && !dto.getStore_image1().equals("")){%>
    <div class="carousel-item active">
      <img src="${pageContext.request.contextPath}/upload/<%=dto.getStore_image1()%>"  height = "336px" width = "560px" alt="이미지">
    </div>
    <%} %>
     <% if(dto.getStore_image2()!=null && !dto.getStore_image2().equals("")){%>
    <div class="carousel-item">
      <img src="${pageContext.request.contextPath}/upload/<%=dto.getStore_image2()%>"  height = "336px" width = "560px" alt="이미지">
    </div>
    <%} %>
     <% if(dto.getStore_image3()!=null && !dto.getStore_image3().equals("")){%>
    <div class="carousel-item">
      <img src="${pageContext.request.contextPath}/upload/<%=dto.getStore_image3()%>"  height = "336px" width = "560px" alt="이미지">
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
				<img src="${pageContext.request.contextPath}/resources/img/phone.png"  height="50px" width="50px" alt="Image" class="img-fluid">
                <i class="fas fa-2x pr-4"></i>
                <p class="media-body mb-0 tm-media-link">가게 번호</p>
                
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link tm-bg-gray tm-media-v-center tm-tab-link" id="profile-tab" data-toggle="tab" href="#tab2" role="tab" aria-controls="profile" aria-selected="false">
                <img src="${pageContext.request.contextPath}/resources/img/waddress.png"  height="50px" width="50px" alt="Image" class="img-fluid">
                <i class="fab fa-2x pr-4"></i>
                <p class="media-body mb-0 tm-media-link">가게 주소</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link tm-bg-gray tm-media-v-center tm-tab-link" id="contact-tab" data-toggle="tab" href="#tab3" role="tab" aria-controls="contact" aria-selected="false">
                <img src="${pageContext.request.contextPath}/resources/img/review.png"  height="50px" width="50px" alt="Image" class="img-fluid">
                <i class="fab fa-2x pr-4"></i>
                <p class="media-body mb-0 tm-media-link">리뷰</p>
               </a>
            </li>
          </ul>
        </div>

        <div class="tm-tab-content-container">
          
          <div class="tab-content h-100 tm-bg-gray" id="myTabContent">
            <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
              <div class="media tm-media-2">
                              <img src="${pageContext.request.contextPath}/resources/img/phone.png" height="100px" width="100px" alt="Image" class="img-fluid">
                <i class="fas fa-5x mb-3 tm-text-pink-dark tm-media-2-icon"></i>

                <div class="media-body tm-media-body-2">
                  <h2 class="mb-4 tm-text-pink-dark tm-media-2-header">가게 번호</h2>
                  <p class="mb-4"><%=dto.getStore_number() %></p>
                </div>
              </div>
            </div>
            
            <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab2-tab">
              <div class="media tm-media-2">
                              <img src="${pageContext.request.contextPath}/resources/img/waddress.png" height="100px" width="100px" alt="Image" class="img-fluid">
                <i class="fas fa-5x mb-3 tm-text-pink-dark tm-media-2-icon"></i>

                <div class="media-body tm-media-body-2">
                  <h2 class="mb-4 tm-text-pink-dark tm-media-2-header">가게 주소</h2>
                  <p class="mb-4"><%=dto.getStore_address() %></p>
                 </div>
              </div>
            </div>

            <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="tab3-tab">
              <div class="media tm-media-2">
                              <img src="${pageContext.request.contextPath}/resources/img/waddress.png" height="100px" width="100px" alt="Image" class="img-fluid">
                <i class="fas fa-5x mb-3 tm-text-pink-dark tm-media-2-icon"></i>

                <div class="media-body tm-media-body-2">
                  <h2 class="mb-4 tm-text-pink-dark tm-media-2-header">리뷰</h2>
                  <p class="mb-4"><%=dto.getStore_info() %></p>
                    <a href="#none"  onclick="goReview('<%=dto.getStore_category()%>')" class="btn btn-secondary">리뷰 보기</a>
                </div>
               </div>
            </div>

          </div>

        </div>
             <div class="container mt-3" style="text-align:right;">
                                                               
                <%if(user_id.equals("admin")) {%>
                 <button class="btn btn-secondary" type="button"
                     onclick="gomodify()">수정</button>
                     <button class="btn btn-secondary" type="button"
                     onclick="godelete()">삭제</button>
             	<%} %>
             	  
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
   window.onload = function () {
		var texts =['선택','전체보기','','음식', '카페', '놀거리'];
		if('<%=key%>' !=""){
		let key = '<%=key%>';
		document.getElementById("searchItem").innerHTML = texts[key];
		}else{
		document.getElementById("searchItem").innerHTML = texts[0];
		}
     };
	
     function goReview(category){
		console.log($("#store_category").val());	
		 var frm = document.viewform
		switch(category){
		case '1':
			frm.action ="<%=request.getContextPath()%>/FOOD_Review/list";
			 frm.method = "post";
	         frm.submit();
			break;
		case '2':
			frm.action ="<%=request.getContextPath()%>/Cafe_Review/list";
			 frm.method = "post";
	         frm.submit();
			break;
		case '3':
			frm.action ="<%=request.getContextPath()%>/PLAY_Review/list";
			 frm.method = "post";
	         frm.submit();
			break;
		}
	}
	
     function changeSearch(id){
    		
    		var texts =['','전체보기','','음식', '카페', '놀거리'];
    		document.getElementById("searchItem").innerHTML = texts[id];
    		document.getElementById("key").value = id;
    		document.getElementById("keyword").value= "";
    	}

     function gomodify() {
         var frm = document.viewform
         frm.action = "<%=request.getContextPath()%>/Store/modify";
         frm.method = "post";
         frm.submit();


     }
	
     function godelete(){
    	 var frm = document.viewform
         frm.action = "<%=request.getContextPath()%>/Store/delete";
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
    		frm.action = "<%=request.getContextPath()%>/Store/list";
    		frm.method ="GET";
    		frm.submit();
    	}
     


</script>