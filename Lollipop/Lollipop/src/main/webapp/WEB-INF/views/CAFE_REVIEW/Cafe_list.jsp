<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.CAFE_REVIEW.*" %>
<%@page import ="mlp.project.lollipop.common.*" %>   
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <title>역삼동 | 당근마켓 동네가게</title>
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
        
    <style ng-transition="poi-seo">
        mat-progress-bar[_ngcontent-sc29] {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 9;
            height: 3px
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc105] {
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: stretch;
            width: 100%;
            min-height: 100%
        }

        mat-progress-bar[_ngcontent-sc105] {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 9;
            height: 3px
        }

        app-responsive-container[_ngcontent-sc105] {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: stretch;
            border-left: 1px solid #e9ecef;
            border-right: 1px solid #e9ecef
        }

        @media (max-width:520px) {
            app-responsive-container[_ngcontent-sc105] {
                border: none
            }
        }

        main[_ngcontent-sc105] {
            position: relative;
            padding-bottom: 36px
        }

        app-footer[_ngcontent-sc105] {
            margin-top: auto
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc79] {
            display: block;
            width: 100%;
            max-width: 784px;
            margin: 0 auto
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc92] {
            width: 100%;
            display: block
        }

        .footer-container[_ngcontent-sc92] {
            padding: 38px 16px 60px
        }

        .media-links-container[_ngcontent-sc92] {
            display: flex;
            flex-direction: row;
            align-items: center
        }

        .media-links-container[_ngcontent-sc92] a[_ngcontent-sc92] {
            margin-right: 12px;
            width: 24px;
            height: 24px
        }

        .media-links-container[_ngcontent-sc92] a[_ngcontent-sc92] img[_ngcontent-sc92] {
            width: 24px;
            height: 24px
        }

        .media-links-container[_ngcontent-sc92] .divider[_ngcontent-sc92] {
            margin-right: 12px;
            width: 1px;
            height: 16px;
            background-color: #ced4da
        }

        .policy-links[_ngcontent-sc92] {
            display: flex;
            flex-direction: row;
            align-items: center;
            flex-wrap: wrap;
            margin-top: 38px;
            color: #868e96
        }

        .policy-links[_ngcontent-sc92] a[_ngcontent-sc92],
        .policy-links[_ngcontent-sc92] span[_ngcontent-sc92] {
            font-style: normal;
            font-weight: 700;
            font-size: 12px;
            line-height: 150%;
            text-decoration: none;
            letter-spacing: -.02em;
            color: #868e96
        }

        .policy-links[_ngcontent-sc92] a.daangn[_ngcontent-sc92],
        .policy-links[_ngcontent-sc92] span.daangn[_ngcontent-sc92] {
            color: #495057
        }

        .emails[_ngcontent-sc92] {
            margin-top: 4px;
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 150%;
            letter-spacing: -.02em;
            color: #868e96
        }

        .emails[_ngcontent-sc92] span[_ngcontent-sc92] {
            margin-right: 12px
        }

        .other-info[_ngcontent-sc92] {
            margin-top: 4px
        }

        .copyright[_ngcontent-sc92],
        .other-info[_ngcontent-sc92] {
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 150%;
            letter-spacing: -.02em;
            color: #868e96
        }

        .copyright[_ngcontent-sc92] {
            margin-top: 24px
        }
    </style>
    <style ng-transition="poi-seo">
        .welcome-banner-container[_ngcontent-sc102] {
            margin-left: 230px;
            padding: 16px;
            margin-bottom: -32px
        }

        @media (max-width:520px) {
            .welcome-banner-container[_ngcontent-sc102] {
                margin-left: 0
            }
        }

        .title-container[_ngcontent-sc102] {
            margin-top: 32px;
            padding: 0 16px
        }

        .title-container[_ngcontent-sc102] h1[_ngcontent-sc102] {
            font-weight: 700;
            font-size: 20px;
            line-height: 125%;
            letter-spacing: -.03em;
            color: #212529
        }

        @media (max-width:520px) {
            .title-container[_ngcontent-sc102] h1[_ngcontent-sc102] {
                font-size: 18px
            }
        }

        @media (max-width:520px) {
            .title-container[_ngcontent-sc102] .short-region-desktop[_ngcontent-sc102] {
                display: none
            }
        }

        .title-container[_ngcontent-sc102] .short-region-mobile[_ngcontent-sc102] {
            font-family: Noto Sans CJK KR;
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 150%;
            letter-spacing: -.02em;
            color: #868e96;
            margin-bottom: 4px;
            display: none
        }

        @media (max-width:520px) {
            .title-container[_ngcontent-sc102] .short-region-mobile[_ngcontent-sc102] {
                display: block
            }
        }

        .categories-container[_ngcontent-sc102] {
            margin-top: 24px;
            margin-left: 16px
        }

        .latest-pois-title[_ngcontent-sc102] {
            margin-top: 40px
        }

        .content-container[_ngcontent-sc102] {
            margin-top: 12px
        }

        app-button[_ngcontent-sc102] {
            color: #212529;
            background-color: #fff;
            border: 1px solid #dde2e6
        }

        app-button[_ngcontent-sc102]:active {
            background-color: #dde2e6
        }

        app-no-poi[_ngcontent-sc102] {
            margin-top: 56px
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc88] {
            display: block
        }

        app-navbar-desktop[_ngcontent-sc88] {
            display: flex
        }

        @media (max-width:520px) {
            app-navbar-desktop[_ngcontent-sc88] {
                display: none
            }
        }

        app-navbar-mobile[_ngcontent-sc88] {
            display: none
        }

        @media (max-width:520px) {
            app-navbar-mobile[_ngcontent-sc88] {
                display: block
            }
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc86] {
            display: flex;
            justify-content: center;
            height: 72px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, .07)
        }

        [_nghost-sc86],
        app-row[_ngcontent-sc86] {
            align-items: center
        }

        app-row[_ngcontent-sc86] {
            padding: 0 16px
        }

        app-row[_ngcontent-sc86] .daangn-logo[_ngcontent-sc86] {
            height: 28px
        }

        app-row[_ngcontent-sc86] .divider[_ngcontent-sc86] {
            width: 1px;
            height: 28px;
            background-color: #e9ecef;
            margin: 0 24px
        }

        app-row[_ngcontent-sc86] app-searchbar[_ngcontent-sc86] {
            flex: 1
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc87] {
            display: block;
            box-shadow: 0 1px 3px rgba(0, 0, 0, .07)
        }

        .logo-container[_ngcontent-sc87] {
            padding: 16px 16px 8px
        }

        .logo-container[_ngcontent-sc87] .daangn-logo[_ngcontent-sc87] {
            height: 24px
        }

        app-searchbar[_ngcontent-sc87] {
            flex: 1
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc82] {
            display: flex;
            flex-direction: row;
        }

        * {
            flex: none;
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc85] {
            display: block
        }

        .searchbar-container[_ngcontent-sc85] {
            align-items: center
        }

        @media (max-width:520px) {
            .searchbar-container[_ngcontent-sc85] {
                padding: 8px 16px
            }
        }

        .searchbar-container[_ngcontent-sc85] app-current-location[_ngcontent-sc85] {
            flex: none
        }

        .searchbar[_ngcontent-sc85] {
            margin-left: 8px;
            position: relative;
            flex: 1
        }

        .searchbar[_ngcontent-sc85] input[_ngcontent-sc85] {
            border: none;
            width: 100%;
            border-radius: 5px;
            padding: 8px 8px 8px 34px;
            font-size: 16px;
            line-height: 150%;
            letter-spacing: -.02em;
            background-color: #f1f3f5
        }

        .searchbar[_ngcontent-sc85] input[_ngcontent-sc85]::-moz-placeholder {
            color: #868e96
        }

        .searchbar[_ngcontent-sc85] input[_ngcontent-sc85]::-ms-input-placeholder {
            color: #868e96
        }

        .searchbar[_ngcontent-sc85] input[_ngcontent-sc85]::placeholder {
            color: #868e96
        }

        .searchbar[_ngcontent-sc85] .search-icon[_ngcontent-sc85] {
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center
        }

        .searchbar[_ngcontent-sc85] .search-icon[_ngcontent-sc85] img[_ngcontent-sc85] {
            width: 18px;
            height: 18px;
            margin-left: 8px
        }

        .search-results-container[_ngcontent-sc85] {
            width: 100%;
            position: relative
        }

        .search-results[_ngcontent-sc85] {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            z-index: 8;
            padding: 16px;
            background-color: #fff;
            box-shadow: 0 1px 3px rgba(0, 0, 0, .07)
        }

        .search-result[_ngcontent-sc85] {
            display: flex;
            flex-direction: row;
            justify-content: flex-start;
            align-items: center;
            margin-top: 16px
        }

        .search-result[_ngcontent-sc85]:first-child {
            margin-top: 0
        }

        .search-result[_ngcontent-sc85] img[_ngcontent-sc85] {
            flex: none;
            width: 32px;
            height: 32px;
            border-radius: 16px
        }

        .search-result[_ngcontent-sc85] h1[_ngcontent-sc85] {
            margin-left: 16px;
            font-style: normal;
            font-weight: 400;
            font-size: 16px;
            line-height: 150%;
            letter-spacing: -.02em
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc84] {
            display: block
        }

        .container[_ngcontent-sc84] {
            align-items: center;
            background-color: #eaf7fa;
            border-radius: 5px;
            padding: 11px 8px 11px 12px
        }

        span[_ngcontent-sc84] {
            font-weight: 700;
            font-size: 12px;
            line-height: 150%;
            color: #2694ab;
            letter-spacing: -.02em;
            text-decoration: none
        }

        img[_ngcontent-sc84] {
            margin-left: 16px;
            width: 18px;
            height: 18px
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc97] {
            display: flex;
            flex-direction: row;
            overflow-y: auto;
            scrollbar-width: none;
            -ms-overflow-style: none
        }

        [_nghost-sc97]>*[_ngcontent-sc97] {
            flex: none;
            margin-right: 8px
        }

        [_nghost-sc97]>[_ngcontent-sc97]:last-child {
            margin-right: 0
        }

        [_nghost-sc97]::-webkit-scrollbar {
            width: 0;
            height: 0
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc96] {
            display: flex;
            flex-direction: row;
            flex: none;
            padding: 6px 14px;
            font-size: 13px;
            line-height: 150%;
            letter-spacing: -.02em;
            color: #212529;
            background: #fff;
            border: 1px solid #e9ecef;
            border-radius: 16px
        }

        [_nghost-sc96] img[_ngcontent-sc96] {
            margin-right: 3px
        }

        [_nghost-sc96]:active {
            background-color: #f1f3f5
        }

        .active[_nghost-sc96] {
            border: none;
            background: #ff8a3d;
            color: #fff;
            font-weight: 700
        }
    </style>
    <style ng-transition="poi-seo">


        [_nghost-sc99] {
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start
        }

        .container[_ngcontent-sc99] {
            width: 100%;
            padding: 16px
        }

        .img-container[_ngcontent-sc99] {
            flex: none;
            width: 64px;
            height: 64px
        }

        .img-container[_ngcontent-sc99] img[_ngcontent-sc99] {
            width: 64px;
            height: 64px;
            border-radius: 5px
        }

        .text-container[_ngcontent-sc99] {
            margin-left: 16px
        }

        .title[_ngcontent-sc99] {
            align-items: center
        }

        .title[_ngcontent-sc99] .poi-name[_ngcontent-sc99] {
            font-weight: 700;
            font-size: 16px;
            line-height: 150%;
            letter-spacing: -.02em;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            text-overflow: ellipsis;
            overflow: hidden
        }

        .title[_ngcontent-sc99] .new-badge[_ngcontent-sc99] {
            font-size: 13px;
            color: #ff7216
        }

        .title[_ngcontent-sc99] .new-badge[_ngcontent-sc99],
        .title[_ngcontent-sc99] .short-address[_ngcontent-sc99] {
            flex: none;
            font-weight: 400;
            line-height: 150%;
            letter-spacing: -.02em;
            margin-left: 4px
        }

        .title[_ngcontent-sc99] .short-address[_ngcontent-sc99] {
            font-style: normal;
            font-size: 12px;
            color: #adb5bd
        }

        .smb-info[_ngcontent-sc99] {
            margin-top: 1px
        }

        .smb-info[_ngcontent-sc99] .description[_ngcontent-sc99] {
            font-style: normal;
            font-weight: 400;
            font-size: 14px;
            line-height: 150%;
            letter-spacing: -.02em;
            color: #212529;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            text-overflow: ellipsis;
            overflow: hidden
        }

        .smb-info[_ngcontent-sc99] .stats[_ngcontent-sc99] {
            margin-top: 1px;
            font-size: 12px;
            line-height: 150%
        }

        .smb-info[_ngcontent-sc99] .stats[_ngcontent-sc99] [_ngcontent-sc99]:after {
            content: "· ";
            color: #dde2e6;
            font-weight: 400
        }

        .smb-info[_ngcontent-sc99] .stats[_ngcontent-sc99] [_ngcontent-sc99]:last-child:after {
            content: none
        }

        .smb-info[_ngcontent-sc99] .stats[_ngcontent-sc99] .reviews[_ngcontent-sc99] {
            font-weight: 700;
            color: #2694ab
        }

        .smb-info[_ngcontent-sc99] .stats[_ngcontent-sc99] .asks[_ngcontent-sc99],
        .smb-info[_ngcontent-sc99] .stats[_ngcontent-sc99] .likes[_ngcontent-sc99] {
            font-weight: 400;
            color: #868e96
        }

        .poi-info[_ngcontent-sc99] {
            margin-top: 1px
        }

        .poi-info[_ngcontent-sc99] .address[_ngcontent-sc99] {
            color: #495057;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            text-overflow: ellipsis;
            overflow: hidden
        }

        .poi-info[_ngcontent-sc99] .address[_ngcontent-sc99],
        .poi-info[_ngcontent-sc99] .branch[_ngcontent-sc99] {
            font-style: normal;
            font-weight: 400;
            font-size: 12px;
            line-height: 150%;
            letter-spacing: -.02em
        }

        .poi-info[_ngcontent-sc99] .branch[_ngcontent-sc99] {
            margin-top: 1px;
            color: #adb5bd
        }

        .review[_ngcontent-sc99] {
            margin-top: 16px;
            border-radius: 4px;
            background-color: #f8f9fa;
            padding: 12px;
            align-items: center
        }

        .review[_ngcontent-sc99] img[_ngcontent-sc99] {
            flex: none;
            width: 24px;
            height: 24px;
            border-radius: 12px
        }

        .review[_ngcontent-sc99] p[_ngcontent-sc99] {
            margin-left: 8px;
            font-style: normal;
            font-weight: 400;
            font-size: 14px;
            line-height: 150%;
            letter-spacing: -.02em;
            color: #212529;
            display: -webkit-box;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
            text-overflow: ellipsis;
            overflow: hidden
        }

        @media (max-width:520px) {
            .review[_ngcontent-sc99] p[_ngcontent-sc99] {
                -webkit-line-clamp: 2
            }
        }

        .divider-container[_ngcontent-sc99] {
            padding: 0 16px;
            width: 100%
        }
    </style>
    <style ng-transition="poi-seo">
        [_nghost-sc98] {
            display: block;
            height: 1px;
            background: rgba(0, 0, 0, .08);
            width: 100%
        }
    </style>
    <style ng-transition="poi-seo">
        .link-container[_ngcontent-sc100] {
            display: flex;
            padding: 16px;
            flex-direction: column;
            align-items: center;
            justify-content: center
        }
    </style>
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
                            <app-row _ngcontent-sc86="" _nghost-sc82=""><a _ngcontent-sc86="" routerlink="/"
                                    class="no-decoration" href="/"><img _ngcontent-sc86="" src="assets/town-logo.svg"
                                        alt="당근마켓 로고" class="daangn-logo"></a>
                                <div _ngcontent-sc86="" class="divider"></div>
                                <app-searchbar _ngcontent-sc86="" placeholder="주변 업체를 찾아보세요" _nghost-sc85="">
                                    <app-row _ngcontent-sc85="" class="searchbar-container" _nghost-sc82="">
                                        <app-current-location _ngcontent-sc85="" _nghost-sc84="">
                                            <app-row _ngcontent-sc84="" class="container" _nghost-sc82=""
                                                style="cursor:pointer;"><span _ngcontent-sc84=""> 역삼동 </span><img
                                                    _ngcontent-sc84="" src="assets/icons/caret-bottom.svg" alt="">
                                            </app-row>
                                        </app-current-location>
                                        <div _ngcontent-sc85="" class="searchbar">
                                        <input _ngcontent-sc85="" type="search" placeholder="업체명 검색" 
                                        value="<%=keyword %>" name="keyword" id="keyword" class="ng-untouched ng-pristine ng-valid" />
                                         <button class="btn btn-secondary" type="button" onclick = "goSearch()"> 검색 </button>
                                            <div _ngcontent-sc85="" class="search-icon"><img _ngcontent-sc85=""
                                                    src="assets/icons/search.svg" alt="">                                           
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
                <main _ngcontent-sc105="">
                    <router-outlet _ngcontent-sc105=""></router-outlet>
                    <app-poi-list _nghost-sc102="">
                    <ngx-json-ld _ngcontent-sc102="">
                    
                    </ngx-json-ld>
                        <!---->
                        <!---->
                        <div _ngcontent-sc102="" class="title-container">
                            <div _ngcontent-sc102="" class="short-region-mobile">서울 강남구</div>
                            <h1 _ngcontent-sc102=""><span _ngcontent-sc102="" class="short-region-desktop">서울 강남구</span>
                                역삼동 근처 동네 가게 </h1>
                        </div>
                        
         <!-- 카테고리 -->
         
                        <div _ngcontent-sc102="" class="categories-container">
                            <app-category-chips _ngcontent-sc102="" _nghost-sc97="">
                                <a _ngcontent-sc97="" class="no-decoration" href="javascript:void();" onclick = "categorySearch('전체')">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96="" 
                                    id = "searchItem1" class="active"> 전체 </app-chip>
                                </a>
                                <a _ngcontent-sc97="" class="no-decoration" href="javascript:void();" onclick = "categorySearch('오늘의 팝딜')">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96="" 
                                    id = "searchItem2" class=""> 오늘의 팝딜 </app-chip>
                                </a>
                                <a _ngcontent-sc97="" class="no-decoration" href="javascript:void();" onclick = "categorySearch('음식점')">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96="" 
                                    id = "searchItem3" class=""> 음식점 </app-chip>
                                </a>
                                <a _ngcontent-sc97="" class="no-decoration" href="javascript:void();" onclick = "categorySearch('카페')">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96="" 
                                    id = "searchItem4" class="" > 카페 </app-chip>
                                </a>
                                <a _ngcontent-sc97="" class="no-decoration" href="javascript:void();" onclick = "categorySearch('놀거리')">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96="" 
                                    id = "searchItem5" class="" > 놀거리 </app-chip>
                                </a>
                                <input type = "hidden" id = review_category name = review_category value = '2'>
                            </app-category-chips>
                        </div>
                        

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
                                
                        

	<%} %>
	<!--  여기까지 리스트 추가 -->
	          <div class="container mt-3" style="text-align:right;">
	       	  	<%=Pager.makeTag(request, 10, totalCnt)%>
	       	  </div>
	       	  
	          <div class="container mt-3" style="text-align:right;">
	         	   <a href="<%=request.getContextPath()%>/Review/write" 
	               class="btn btn-secondary">글쓰기</a>
	          </div>
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

</body>

</html>

<script>

	function changeSearch(id)
	{
		document.getElementById("searchItem").innerHTML=texts[id]; //화면에 보이기 위해서 
		document.getElementById("key").value=id;//컨트롤러로 넘기기 위해서
		document.getElementById("keyword").value="";
		let frm = document.listform;
		frm.pg.value=0;
		frm.action = "<%=request.getContextPath()%>/Cafe_Review/list";
		frm.method = "get";
		frm.submit();
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
		document.getElementById("key").value=id;//컨트롤러로 넘기기 위해서
		let frm = document.listform;
		frm.pg.value=0;
		frm.action = "<%=request.getContextPath()%>/Review/listcat";
		frm.method = "get";
		frm.submit();
	}
</script>
