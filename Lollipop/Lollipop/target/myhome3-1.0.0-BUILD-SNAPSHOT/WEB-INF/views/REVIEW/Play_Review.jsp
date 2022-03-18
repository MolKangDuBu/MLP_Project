<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.REVIEW.*" %>
<%@page import ="mlp.project.lollipop.common.*" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>롤리팝 맛집</title>
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
   	
   	<%@include file ="../include/board.jsp"  %>
    	
</head>

<body>
	
 <%
	String key = StringUtil.nullToValue(request.getParameter("key"), "1");
	String keyword = StringUtil.nullToValue(request.getParameter("keyword"), "");
	String pg = StringUtil.nullToValue(request.getParameter("pg"), "0");
	int totalCnt = (Integer)request.getAttribute("totalCnt");
%>
<form name = "listform" id = "listform">
	<input type = "hidden" name = "key" id = "key" value = "<%=key%>"/>
	<input type = "hidden" name = "pg" id = "pg" value ="<%=pg%>"/>
	<input type = "hidden" name = "review_key" id = "review_key" value =""/>
    <div style="width: 50%; margin: auto;">
        <!-- Navigation-->
   
     <%@include file="../include/nav.jsp" %>
     
    <app-root _nghost-sc29="" ng-version="9.1.0">
        <!---->
        <router-outlet _ngcontent-sc29=""></router-outlet>
        <app-main-layout _nghost-sc105="">
            <app-navbar _ngcontent-sc105="" _nghost-sc88="">
                <app-navbar-desktop _ngcontent-sc88="" _nghost-sc86="">
                    <app-responsive-container _ngcontent-sc86="" _nghost-sc79="">
                        <nav _ngcontent-sc86="">
                            <app-row _ngcontent-sc86="" _nghost-sc82=""><a _ngcontent-sc86="" routerlink="/"
                                    class="no-decoration" href="/"><img _ngcontent-sc86="" src="assets/town-logo.svg"
                                        alt="롤리팝 로고" class="daangn-logo"></a>
                                <div _ngcontent-sc86="" class="divider"></div>
                                <app-searchbar _ngcontent-sc86="" placeholder="메뉴명 검색" _nghost-sc85="">
                                    <app-row _ngcontent-sc85="" class="searchbar-container" _nghost-sc82="">
                                        <app-current-location _ngcontent-sc85="" _nghost-sc84="">
                                            <app-row _ngcontent-sc84="" class="container" _nghost-sc82=""
                                                style="cursor:pointer;"><span _ngcontent-sc84=""> 역삼동 </span><img
                                                    _ngcontent-sc84="" src="assets/icons/caret-bottom.svg" alt="">
                                            </app-row>
                                        </app-current-location>
            <!-- 검색창? -->   				<div _ngcontent-sc85="" class="searchbar"><input _ngcontent-sc85=""
                                              type="text" placeholder="메뉴명 검색" value = "<%=keyword%>" name="keyword" id = "keyword"
                                                class="ng-untouched ng-pristine ng-valid"> 
                                            <div _ngcontent-sc85="" class="search-icon"><img _ngcontent-sc85=""
                                                    src="assets/icons/search.svg" alt="">
                                                    <button class="btn btn-secondary" type = "button" onclick = "gosearch()">Go</button>
                                            </div>
                                            
                                        </div>
                                    </app-row>
                                    <!---->
                                </app-searchbar>
                            </app-row>
                        </nav>
                    </app-responsive-container>
                </app-navbar-desktop>
                <app-navbar-mobile _ngcontent-sc88="" _nghost-sc87="">
                    <nav _ngcontent-sc87="">
                        <app-row _ngcontent-sc87="" class="logo-container" _nghost-sc82=""><a _ngcontent-sc87=""
                                routerlink="/" class="no-decoration" href="/"><img _ngcontent-sc87=""
                                    src="assets/town-logo.svg" alt="당근마켓 로고" class="daangn-logo"></a></app-row>
                        <app-searchbar _ngcontent-sc87="" placeholder="우리동네 업체를 찾아보세요" _nghost-sc85="">
                            <app-row _ngcontent-sc85="" class="searchbar-container" _nghost-sc82="">
                                <app-current-location _ngcontent-sc85="" _nghost-sc84="">
                                    <app-row _ngcontent-sc84="" class="container" _nghost-sc82=""
                                        style="cursor:pointer;"><span _ngcontent-sc84=""> 역삼동 </span><img
                                            _ngcontent-sc84="" src="assets/icons/caret-bottom.svg" alt=""></app-row>
                                </app-current-location>
                                <div _ngcontent-sc85="" class="searchbar"><input _ngcontent-sc85="" type="search"
                                        placeholder="우리동네 업체를 찾아보세요" value="" class="ng-untouched ng-pristine ng-valid">
                                    <div _ngcontent-sc85="" class="search-icon"><img _ngcontent-sc85=""
                                            src="assets/icons/search.svg" alt="검색"></div>
                                </div>
                            </app-row>
                            <!---->
                        </app-searchbar>
                    </nav>
                </app-navbar-mobile>
            </app-navbar>
            <!---->
            <app-responsive-container _ngcontent-sc105="" _nghost-sc79="">
                <main _ngcontent-sc105="">
                    <router-outlet _ngcontent-sc105=""></router-outlet>
                    <app-poi-list _nghost-sc102="">
                        <ngx-json-ld _ngcontent-sc102="">
                            <script type="application/ld+json">{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "서울특별시 강남구 역삼동",
      "item": "https://town.daangn.com/regions/6035"
    }
  ]
}</script>
                        </ngx-json-ld>
                        <!---->
                        <!---->
                        <div _ngcontent-sc102="" class="title-container">
                            <div _ngcontent-sc102="" class="short-region-mobile">서울 강남구</div>
                            <h1 _ngcontent-sc102=""><span _ngcontent-sc102="" class="short-region-desktop">서울 강남구</span>
                                역삼동 근처 동네 가게 </h1>
                        </div>
                        <div _ngcontent-sc102="" class="categories-container">
                            <app-category-chips _ngcontent-sc102="" _nghost-sc97="">
                                <p _ngcontent-sc97="" 
                                     class="no-decoration" href="#">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96=""  id = "searchItem1" class="active" onclick = "changeSearch('1')"> 전체 </app-chip>
                                </p>
                                <p _ngcontent-sc97="" 
                                    class="no-decoration" href="#">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96=""   id = "searchItem2" class="" onclick = "changeSearch('2')"> 오늘의 팝딜 </app-chip>
                                </p>
                                <p _ngcontent-sc97="" 
                                    class="no-decoration" href="#">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96=""   id = "searchItem3"class="" onclick = "changeSearch('3')"> 음식점 </app-chip>
                                </p>
                                <p _ngcontent-sc97="" 
                                    class="no-decoration" href="#">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96=""   id = "searchItem4"class="" onclick = "changeSearch('4')"> 카페 </app-chip>
                                </p>
                                <p _ngcontent-sc97=""
                                    class="no-decoration" href="#">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96=""   id = "searchItem5"class="" onclick = "changeSearch('5')"> 놀거리 </app-chip>
                                </p>
                            </app-category-chips>
                        </div>

                        <div _ngcontent-sc102="" class="content-container">
                            <app-poi-item _ngcontent-sc102="" _nghost-sc99="">
<!-- 여기부터 리스트 추가 -->

   			<%
            	List<ReviewDto> list = (List<ReviewDto>)request.getAttribute("ReviewList");
           		for(ReviewDto tempDto : list){
            %>
                                <a _ngcontent-sc99="" class="no-decoration container"  onclick= "goView('<%=tempDto.getReview_key()%>')">
                                    <app-row _ngcontent-sc99="" _nghost-sc82="">
                                        <div _ngcontent-sc99="" class="img-container"><img _ngcontent-sc99=""
                                                src="${pageContext.request.contextPath}/upload/<%=tempDto.getReview_image1()%>"
                                                alt="돼지게티"></div>
                                        <div _ngcontent-sc99="" class="text-container">
                                            <app-row _ngcontent-sc99="" class="title" _nghost-sc82="">
                                                <p _ngcontent-sc99="" class="poi-name" ><%=tempDto.getReview_title()%></p>
                                              
                                                <p>
                                                    <img src="D:\OneDrive\바탕화~1-DESKTOP-OS4S3HI-7407125\풀스택 프로젝트\게시판디자인\images\별.PNG">
                                                    <h6><%=tempDto.getReview_like()%></h6>
                                                </p>
                                            </app-row>
                                            <div _ngcontent-sc99="" class="poi-info">
                                                <p _ngcontent-sc99="" class="address"> 서울특별시 강남구 봉은사로30길 64 (역삼동, 해석빌딩) </p>
                                                <p _ngcontent-sc99="" class="branch"> </p>
                                            </div>
                                        </div>
                                    </app-row>
                                </a>
     	 <%}%>
<!-- 여기까지 리스트 추가 -->

                                <div style="margin: auto;">
                               	 <%=Pager.makeTag(request, 10, totalCnt) %>
                                </div>
                                <div class="container mt-3" style="text-align:right;">
           						 <a href="<%=request.getContextPath()%>/Review/write" 
               						class="btn btn-secondary">글쓰기</a>
       							</div>
                                <div _ngcontent-sc99="" class="divider-container">
                                    <app-divider _ngcontent-sc99="" _nghost-sc98=""></app-divider>
                                </div>
                            </app-poi-item>
                            
                        </div>
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
        </app-main-layout>
        <!---->
    </app-root>
</form>
</body>

</html>


<script>
window.onload = function(){
	
	let key = '<%=key%>';
	for(var i =1; i<=5; i++){
		document.getElementById("searchItem"+i).classList.remove("active");
	}
	document.getElementById("searchItem"+key).classList.add("active");
}
			
function changeSearch(id){
	
	for(var i =1; i<=5; i++){
		document.getElementById("searchItem"+i).classList.remove("active");
	}
	document.getElementById("searchItem"+id).classList.add("active");
	document.getElementById("key").value = id;
	document.getElementById("keyword").value= "";
	let frm = document.listform;
	frm.pg.value=0;
	frm.action = "<%=request.getContextPath()%>/Review/list";
	frm.method ="GET";
	frm.submit();
	
}

function gosearch(){
	let frm = document.listform;
	frm.pg.value=0;
	frm.action = "<%=request.getContextPath()%>/Review/list";
	frm.method ="GET";
	frm.submit();
}

function goPage(pg){
	
	frm = document.listform;
	frm.pg.value = pg;
	frm.method = "get";
	frm.action = "${pageContext.request.contextPath}/Review/list";
	frm.submit();
}

function goView(id){

	frm = document.listform;
	frm.review_key.value = id;
	frm.method = "get";
	frm.action = "${pageContext.request.contextPath}/Review/view";
	frm.submit();
}
</script>

