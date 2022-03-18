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
	
	
		<!-- Navigation -->
	<%@include file="../include/nav.jsp" %>
		<!--  -->
      
    <app-root _nghost-sc29="" ng-version="9.1.0">
        <!---->
        <router-outlet _ngcontent-sc29=""></router-outlet>
        <app-main-layout _nghost-sc105="">
            <app-navbar _ngcontent-sc105="" _nghost-sc88="">
                <app-navbar-desktop _ngcontent-sc88="" _nghost-sc86="">
                    <app-responsive-container _ngcontent-sc86="" _nghost-sc79="">
                        <nav _ngcontent-sc86="">
                            <app-row _ngcontent-sc86="" _nghost-sc82="">
                                <div _ngcontent-sc86="" class="divider"></div>
                                <a _ngcontent-sc86="" routerlink="/"
                                    class="no-decoration" href="/"></a>
                                <app-searchbar _ngcontent-sc86="" placeholder="주변 업체를 찾아보세요" _nghost-sc85="">
                                    <app-row _ngcontent-sc85="" class="searchbar-container" _nghost-sc82="">
                                        <app-current-location _ngcontent-sc85="" _nghost-sc84="">
                                            <app-row _ngcontent-sc84="" class="container" _nghost-sc82=""
                                                style="cursor:pointer;"> 
                                                   <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown"
											             id = "searchItem">
											                선택하세요
											        </button>
                                                <ul class="dropdown-menu">
									            <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('1')">전체</a></li>
									              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('3')">음식</a></li>
									              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('4')">카페</a></li>
									              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('5')">놀거리</a></li>
									            </ul>
                                            </app-row>
                                        </app-current-location>
                                        <div _ngcontent-sc85="" class="searchbar">
                                        <input _ngcontent-sc85="" type="search" placeholder="제목, 내용 검색" 
                                        value="<%=keyword %>" name="keyword" id="keyword" class="ng-untouched ng-pristine ng-valid" />
                                         
                                            <div _ngcontent-sc85="" class="search-icon"><img _ngcontent-sc85=""
                                                    src="assets/icons/search.svg" alt="" onclick = "goSearch()">                                           
                                           </div>                                            
                                        </div>
                                        
                                    </app-row>
                                    <!---->
                                </app-searchbar>
                            </app-row>
                        </nav>
                    </app-responsive-container>
                </app-navbar-desktop>
                
            </app-navbar>
            <!---->
            <app-responsive-container _ngcontent-sc105="" _nghost-sc79="">
               
                        <!---->
                        <!---->
                        <div _ngcontent-sc102="" class="title-container">
                      	<%String title = (String)request.getAttribute("title");
                       	if(title.equals("null") ) {%>
                            <h1 _ngcontent-sc102=""><span _ngcontent-sc102="" class="short-region-desktop">카페 게시판</span></h1>
                        </div>
                       <% }else{%>
						<h1 _ngcontent-sc102=""><span _ngcontent-sc102="" class="short-region-desktop"><%=title%></span></h1>
                        
						<%} %>
                       
                        
         <!-- 카테고리 -->
         
                  
                        
<input type = "hidden" id = review_category name = review_category value = '2'>

<!--  여기부터 리스트 추가 -->

                        <div _ngcontent-sc102="" class="content-container">
                            <app-poi-item _ngcontent-sc102="" _nghost-sc99="">

	<%		
		for(Cafe_ReviewDto tempDto : list){
	%>
									
	                     <a _ngcontent-sc99="" class="no-decoration container">
	                         <app-row _ngcontent-sc99="" _nghost-sc82="">
	                             <div _ngcontent-sc99="" class="img-container" onclick="goView('<%=tempDto.getReview_key()%>')">
	                              <img _ngcontent-sc99=""
	                                   src="${pageContext.request.contextPath}/upload/<%=tempDto.getReview_image1()%>"
	                                   alt="">
	                             </div>
	                             <div _ngcontent-sc99="" class="text-container">
	                                 <app-row _ngcontent-sc99="" class="title" _nghost-sc82="">
	                                 <div onclick="goView('<%=tempDto.getReview_key()%>')">
	                                     <p _ngcontent-sc99="" class="poi-name"><%=tempDto.getReview_title() %></p>
	                                 </div>
	                                     <span _ngcontent-sc99="" class="short-address">역삼동;</span> 
	                                     <p>
	                                         <img src="D:\OneDrive\바탕화~1-DESKTOP-OS4S3HI-7407125\풀스택 프로젝트\게시판디자인\images\별.PNG">
	                                         <h6>5.0</h6>
	                                     </p>
	                                 </app-row>
	                                 <div _ngcontent-sc99="" class="poi-info" onclick="goView('<%=tempDto.getReview_key()%>')">
	                                     <p _ngcontent-sc99="" class="address"> <%=tempDto.getReview_address() %> </p>
	                                     <p _ngcontent-sc99="" class="branch"> </p>
	                                 </div>                                          
	                                </div>
                                                                    
                        	 </app-row>
                                </a>
         </div> 

                        

	<%} %>
	<!--  여기까지 리스트 추가 -->
	          <div class="container mt-3" style="text-align:right;">
	       	  	<%=Pager.makeTag(request, 10, totalCnt)%>
	       	  </div>
	       	  
	          <div class="container mt-3" style="text-align:right;">
	         	   <a href="<%=request.getContextPath()%>/Review/write" 
	               class="btn btn-secondary">글쓰기</a>
	          </div>              
                                
                 <div _ngcontent-sc99="" class="divider-container">
                    <app-divider _ngcontent-sc99="" _nghost-sc98=""></app-divider>
                 </div>
            </app-poi-item>
            
       
    </app-poi-list>

                </main>
                <app-footer _ngcontent-sc105="" _nghost-sc92="">
                    <div _ngcontent-sc92="" class="footer-container">
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
                        <div _ngcontent-sc92="" class="copyright"> Copyright © Lollipop Market Inc. All rights reserved.
                        </div>
                    </div>
                </app-footer>
            </app-responsive-container>
            </div>
        </app-main-layout>
        <!---->
    </app-root>
</form>
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
	
	function goView(review_key)
	{
		frm = document.listform;
		frm.review_key.value=review_key;///////////
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
