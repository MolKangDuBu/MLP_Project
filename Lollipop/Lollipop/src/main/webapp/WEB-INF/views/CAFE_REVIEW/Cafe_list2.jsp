<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.CAFE_REVIEW.*" %>
<%@page import ="mlp.project.lollipop.common.*" %>   
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <title>   | 롤리팝 카페</title>
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
	String key = StringUtil.nullToValue(request.getParameter("key"), "1");
	String keyword = StringUtil.nullToValue(request.getParameter("keyword"), "");
	String pg = StringUtil.nullToValue(request.getParameter("pg"), "0");
	int totalCnt = (Integer)request.getAttribute("totalCnt");
	List<Cafe_ReviewDto> list = (List<Cafe_ReviewDto>)request.getAttribute("ReviewList");
	%>
	
	<form name="listform" method="get" id= "listform">
	<input type="hidden" name="key" id="key" value="<%=key%>"/>
	<input type="hidden" name="pg"  id="pg" value="<%=pg%>"/>
	<input type="hidden" name="review_id"  id="review_id" value=""/>
	<input type="hidden" name="review_key"  id="review_key" value="0"/>
	<input type="hidden" name="store_key" id="store_key" value=""/>
	</form>
	
		<!-- 섹션값 -->
	<%@include file="../include/nav.jsp" %>
	
				
		  <!-- Loader -->
	<div id="loader-wrapper">
    	<div id="loader"></div>
   		<div class="loader-section section-left"></div>
   		<div class="loader-section section-right"></div>
 	</div>
      
  <div class="tm-main">
   
 	<!-- Navigation -->
 	<div class="tm-welcome-section">
      <div class="container tm-navbar-container">
        <div class="row">
          <div class="col-xl-12">
            <nav class="navbar navbar-expand-sm">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                  <a href="<%=request.getContextPath()%>/" class="nav-link tm-nav-link tm-text-white active">Home</a>
                </li>
                <li class="nav-item">
                  <a href="about.html" class="nav-link tm-nav-link tm-text-white">회원가입</a>
                </li>
                <li class="nav-item">
                  <a href="contact.html" class="nav-link tm-nav-link tm-text-white">로그인</a>
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
                          
	                    
         <div class="row">
       		<div class="col-lg-12">
         	 <div class="tm-tag-line">
         	 <%String title = (String)request.getAttribute("title");
              if(title.equals("null") ) {%>
         	  <h2 class="tm-tag-line-title">카페 게시판</h2>
       		 </div>
       		 <% }else{%>
       		  <h2 class="tm-tag-line-title"><%=title%></h2>
   		  	 <%} %>
      		</div>
     	 </div>
                   
                        
         <!-- 카테고리 --> 
<input type = "hidden" id = review_category name = review_category value = '2'>



<!--  여기부터 리스트 추가 -->

      <div class="row mb-5">
        <div class="col-xl-12">
      	  <div class="media-boxes">
	<%		
		for(Cafe_ReviewDto tempDto : list){
	%>
		
           <div class="media">
            <img src="${pageContext.request.contextPath}/upload/<%=tempDto.getReview_image1()%> 
          	  "width = "100px" height ="117px" alt="Image" class="mr-3" alt="Image" class="mr-3">
            <div class="media-body tm-bg-gray">
             <div class="tm-description-box">            			
              <h5 class="tm-text-blue"><%=tempDto.getReview_title() %></h5>
         	  <p class="mb-0"><%=tempDto.getReview_address() %></p>
             </div>
               <div class="tm-buy-box">
	             <a class="tm-bg-blue tm-text-white tm-buy" onclick="goView('<%=tempDto.getReview_key()%>', '<%=tempDto.getStore_key()%>')">View</a>
	         
	        	  <span class="tm-text-blue tm-price-tag"><%=tempDto.getReview_hit()%></span>
	           </div>
             </div>
            </div>
   <%} %>
           </div>
   		 </div>
       <!--  여기까지 리스트 추가 -->
        </div>
          	<div style="margin-right:auto; margin-left:auto;">
       	  		<%=Pager.makeTag(request, 10, totalCnt)%>
     		 </div>
	       	  <div class="container mt-3" style="text-align:right;">
	         	   <a href="<%=request.getContextPath()%>/Review/write" 
	               class="btn btn-secondary">글쓰기</a>
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
               
       
        <!---->
    
   




</body>
</html>

<script>

window.onload = function(){
	
	let key = '<%=key%>';
	var texts =['','전체','','음식', '카페', '놀거리'];
	document.getElementById("searchItem").innerHTML = texts[key];
}

	function goSearch()
	{
		let frm = document.listform;
		frm.pg.value=0;
		frm.action = "<%=request.getContextPath()%>/Cafe_Review/list";
		frm.method="get";
		frm.submit();
	}
	
	function goPage(pg)
	{
		frm = document.listform;
		frm.pg.value=pg;///////////
		frm.method="get";
		frm.action="${pageContext.request.contextPath}/Cafe_Review/list";
		frm.submit();
	}
	
	function goView(review_key, store_key)
	{
		frm = document.listform;
		frm.review_key.value=review_key;///////////
		frm.store_key.value=store_key;///////////
		
	
		frm.method="get";
		frm.action="${pageContext.request.contextPath}/Cafe_Review/view";
		frm.submit();
	}
	
	function categorySearch(id){
		
		var texts =['','전체','','음식', '카페', '놀거리'];
		document.getElementById("searchItem").innerHTML = texts[id];
		document.getElementById("key").value = id;
		document.getElementById("keyword").value= "";
	}
</script>
