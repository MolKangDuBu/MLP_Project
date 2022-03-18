<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.FOODREVIEW.*" %>

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

    <script
        src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=3147f31e8bf2124276d5308be9acdcbb&amp;autoload=false"></script>
    <link rel="stylesheet" href="styles.bda21ab4755c6260b522.css">
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
    <meta name="og:title" content="역삼동 | 당근마켓 동네가게">
    <meta name="description"
        content="역삼동 근처 &quot;카페&quot;, &quot;휴대폰판매&quot;, &quot;이사&quot;, &quot;네일샵&quot;, &quot;미용실&quot;, &quot;피부관리&quot;, &quot;기타학원&quot;, &quot;공인중개사&quot;, &quot;주택수리종합&quot; 가게를 확인해 보세요!">
    <meta name="og:description"
        content="역삼동 근처 &quot;카페&quot;, &quot;휴대폰판매&quot;, &quot;이사&quot;, &quot;네일샵&quot;, &quot;미용실&quot;, &quot;피부관리&quot;, &quot;기타학원&quot;, &quot;공인중개사&quot;, &quot;주택수리종합&quot; 가게를 확인해 보세요!">
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
    <div style="width: 80%; margin: auto;">
    <ul class="nav justify-content-end">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#"><strong>오늘의 팝딜</strong></a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#">내주변</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#">고객센터</a>
        </li>
      </ul>
    </div>
    
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
                                        <div _ngcontent-sc85="" class="searchbar"><input _ngcontent-sc85=""
                                                type="search" placeholder="주변 업체를 찾아보세요" value=""
                                                class="ng-untouched ng-pristine ng-valid">
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
                                <a _ngcontent-sc97="" routerlink="."
                                    queryparamshandling="merge" class="no-decoration" href="/regions/6035/stores">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96="" class="active"> 전체 </app-chip>
                                </a>
                                <a _ngcontent-sc97="" routerlink="." queryparamshandling="merge"
                                    class="no-decoration" href="/regions/6035/stores?categoryId=1160">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96=""> 오늘의 팝딜 </app-chip>
                                </a>
                                <a _ngcontent-sc97="" routerlink="." queryparamshandling="merge"
                                    class="no-decoration" href="/regions/6035/stores?categoryId=18">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96=""> 음식점 </app-chip>
                                </a>
                                <a _ngcontent-sc97="" routerlink="." queryparamshandling="merge"
                                    class="no-decoration" href="/regions/6035/stores?categoryId=267">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96=""> 카페 </app-chip>
                                </a>
                                <a _ngcontent-sc97="" routerlink="." queryparamshandling="merge"
                                    class="no-decoration" href="/regions/6035/stores?categoryId=224">
                                    <app-chip _ngcontent-sc97="" _nghost-sc96=""> 놀거리 </app-chip>
                                </a>
                            </app-category-chips>
                        </div>



                        <div _ngcontent-sc102="" class="content-container">
                            <app-poi-item _ngcontent-sc102="" _nghost-sc99="">

                         <a _ngcontent-sc99="" class="no-decoration container" href="/stores/4972789">
                         
<%
                         List<FoodReviewDto> reviewList =(List<FoodReviewDto>)request.getAttribute("reviewList");
                         for(int i=0; i<reviewList.size(); i++){
                         	FoodReviewDto dto =  reviewList.get(i);
                         %>
       
                                    <app-row _ngcontent-sc99="" _nghost-sc82="">
                                        <div _ngcontent-sc99="" class="img-container"><img _ngcontent-sc99=""
                                                src="https://dnvefa72aowie.cloudfront.net/capri/bizPlatform/profile/19692845/1614771728198/c72db320900c5a60cac437797e634f7f5b43f89850f01d59dbb87a18231cb77a.jpeg?q=82&amp;s=300x300&amp;t=crop"
                                                alt="돼지게티"></div>
                                        <div _ngcontent-sc99="" class="text-container">
                                            <app-row _ngcontent-sc99="" class="title" _nghost-sc82="">
                                                <p _ngcontent-sc99="" class="poi-name"><%=dto.getReview_title()%></p>
                                                <span _ngcontent-sc99="" class="short-address"><%=dto.getReview_title()%></span> 
                                                <p>
                                                    <img src="D:\OneDrive\바탕화~1-DESKTOP-OS4S3HI-7407125\풀스택 프로젝트\게시판디자인\images\별.PNG">
                                                    <h6>5.0</h6>
                                                </p>
                                            </app-row>
                                            <div _ngcontent-sc99="" class="poi-info">
                                                <p _ngcontent-sc99="" class="address"><%=dto.getReview_title()%></p>
                                                <p _ngcontent-sc99="" class="branch"> </p>
                                            </div>
                                        </div>
                                    </app-row>
                                </a>
<%}%>
                                <div style="margin: auto;">
                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group width:auto" role="group" aria-label="Third group">
                                        <button type="button" class="btn btn-info">1</button>
                                        <button type="button" class="btn btn-info">2</button>
                                        <button type="button" class="btn btn-info">3</button>
                                        <button type="button" class="btn btn-info">4</button>
                                        <button type="button" class="btn btn-info">5</button>
                                        <button type="button" class="btn btn-info">6</button>
                                        <button type="button" class="btn btn-info">7</button>
                                        <button type="button" class="btn btn-info">8</button>
                                        <button type="button" class="btn btn-info">9</button>
                                        <button type="button" class="btn btn-info">10</button>
                                        <button type="button" class="btn btn-secondary">다음</button>
                                    </div>
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