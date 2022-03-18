<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   	    <link href="resources/css/board.css" rel="stylesheet" />
</head>

<body>
    <div style="width: 50%; margin: auto;">
        <!-- Navigation-->
        <nav style ="background-color: rgba(241, 19, 123, 0.863);"> 
            <div class="container">
                <ul class="nav justify-content-end">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">로그인</a>
                    </li>              
                    <li class="nav-item">
                        <a class="nav-link" href="#">회원가입</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">고객센터</a>
                    </li>
                </ul>
            </div>
        </nav>
    
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
                                        <div _ngcontent-sc85="" class="searchbar"><input _ngcontent-sc85=""
                                                type="search" placeholder="메뉴명 검색" value=""
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
                                    <app-row _ngcontent-sc99="" _nghost-sc82="">
                                        <div _ngcontent-sc99="" class="img-container"><img _ngcontent-sc99=""
                                                src="https://dnvefa72aowie.cloudfront.net/capri/bizPlatform/profile/19692845/1614771728198/c72db320900c5a60cac437797e634f7f5b43f89850f01d59dbb87a18231cb77a.jpeg?q=82&amp;s=300x300&amp;t=crop"
                                                alt="돼지게티"></div>
                                        <div _ngcontent-sc99="" class="text-container">
                                            <app-row _ngcontent-sc99="" class="title" _nghost-sc82="">
                                                <p _ngcontent-sc99="" class="poi-name">돼지게티</p>
                                                <span _ngcontent-sc99="" class="short-address">역삼동;</span> 
                                                <p>
                                                    <img src="D:\OneDrive\바탕화~1-DESKTOP-OS4S3HI-7407125\풀스택 프로젝트\게시판디자인\images\별.PNG">
                                                    <h6>5.0</h6>
                                                </p>
                                            </app-row>
                                            <div _ngcontent-sc99="" class="poi-info">
                                                <p _ngcontent-sc99="" class="address"> 서울특별시 강남구 봉은사로30길 64 (역삼동, 해석빌딩) </p>
                                                <p _ngcontent-sc99="" class="branch"> </p>
                                            </div>
                                        </div>
                                    </app-row>
                                </a>

                                <div style="margin: auto;">
                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group width:auto" role="group" aria-label="Third group">
                                        <button type="button" class="btn btn-info">1</button>
                                        <button type="button" class="btn btn-info">2</button>
                                        <button type="button" class="btn btn-info">3</button>
                                        <button type="button" class="btn btn-info">4</button>
                                        <button type="button" class="btn btn-info">5</button>
                                    
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


