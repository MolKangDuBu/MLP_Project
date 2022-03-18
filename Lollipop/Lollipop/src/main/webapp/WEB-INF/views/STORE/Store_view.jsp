<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@page import="java.util.*" %>
        <%@page import="mlp.project.lollipop.STORE.*" %>
            <%@page import="mlp.project.lollipop.common.*" %>
                <!DOCTYPE html>
                <html lang="ko">

                <head>
                    <meta charset="utf-8">
                    <title>롤리팝 맛집</title>
                    <base href="/">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <meta name="og:locale" content="ko_KR">
                    <link rel="icon" type="image/x-icon" href="favicon.ico">
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                        rel="stylesheet">
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
                    <link rel="stylesheet"
                        href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,700&amp;display=swap">

                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

                    <script src="//cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
                    <script type="text/javascript" src="/lollipop/ckfinder/ckfinder.js"></script>
                    <%@include file="../include/board.jsp" %>
				  <style>
				     /* 캐러셀(이미지슬라이드) 이미지 크기변경 */
				      .carousel-inner{
				        width:100%;
				        height:500px; /* 이미지 높이 변경 */
				      }
				      .carousel-item{
				        width: 100%;
				        height:100%;
				      }
				      .d-block {
				        display:block;
				        width: 100%;
				        height: 100%;
				      }
				      </style>
                </head>

                <body>

			
                    <form name="writeform" id="writeform" method="post" enctype="multipart/form-data">
					
                        <% StoreDto dto=(StoreDto)request.getAttribute("StoreDto"); %>
						<input type ="hidden" id = store_bnumber name =store_bnumber value="<%=dto.getStore_bnumber() %>">  
						<input type ="hidden" id = store_key name =store_key value="<%=dto.getStore_key() %>">                      
                            <div style="width: 50%; margin: auto;">
                                <!-- Navigation-->

                                <%@include file="../include/nav.jsp" %>

                                    <app-root _nghost-sc29="" ng-version="9.1.0">
                                        <!---->
                                        <router-outlet _ngcontent-sc29=""></router-outlet>
                                        <app-main-layout _nghost-sc105="">
       
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
                                                            <div _ngcontent-sc102="" class="short-region-mobile">서울 강남구
                                                            </div>
                                                            <h1 _ngcontent-sc102="" style ="text-align: center"><span _ngcontent-sc102="" 
                                                                    class="short-region-desktop"><%=dto.getStore_name()%></span>
                                                            </h1>
                                                        </div>
                                                  

                                                             
                                                                        <div id="carouselExampleIndicators"
                                                                            class="carousel slide"
                                                                            data-bs-ride="carousel">
                                                                            <div class="carousel-indicators">
                                                                                <button type="button"
                                                                                    data-bs-target="#carouselExampleIndicators"
                                                                                    data-bs-slide-to="0" class="active"
                                                                                    aria-current="true"
                                                                                    aria-label="Slide 1"></button>
                                                                                <button type="button"
                                                                                    data-bs-target="#carouselExampleIndicators"
                                                                                    data-bs-slide-to="1"
                                                                                    aria-label="Slide 2"></button>
                                                                                <button type="button"
                                                                                    data-bs-target="#carouselExampleIndicators"
                                                                                    data-bs-slide-to="2"
                                                                                    aria-label="Slide 3"></button>
                                                                            </div>
                                                                            <div class="carousel-inner">
                                                                                 <% if(dto.getStore_image1()!=null){%>
                                                                                <div class="carousel-item active">
                                                                                    <img src="${pageContext.request.contextPath}/upload/<%=dto.getStore_image1()%>"
                                                                                        class="d-block w-100" alt="..." height="20%">
                                                                                </div>
                                                                                <%}%>
                                                                                   <% if(dto.getStore_image2()!=null){%>
                                                                                <div class="carousel-item">
                                                                                    <img src="${pageContext.request.contextPath}/upload/<%=dto.getStore_image2()%>"
                                                                                        class="d-block w-100" alt="..." height="20%">
                                                                                </div>
                                                                                 <%}%>
                                                                                   <% if(dto.getStore_image3()!=null){%>
                                                                                <div class="carousel-item">
                                                                                    <img src="${pageContext.request.contextPath}/upload/<%=dto.getStore_image3()%>"
                                                                                        class="d-block w-100" alt="..." height="20%">
                                                                                </div>
                                                                                 <%}%>
                                                                            </div>
                                                                            <button class="carousel-control-prev"
                                                                                type="button"
                                                                                data-bs-target="#carouselExampleIndicators"
                                                                                data-bs-slide="prev">
                                                                                <span class="carousel-control-prev-icon"
                                                                                    aria-hidden="true"></span>
                                                                                <span
                                                                                    class="visually-hidden">Previous</span>
                                                                            </button>
                                                                            <button class="carousel-control-next"
                                                                                type="button"
                                                                                data-bs-target="#carouselExampleIndicators"
                                                                                data-bs-slide="next">
                                                                                <span class="carousel-control-next-icon"
                                                                                    aria-hidden="true"></span>
                                                                                <span
                                                                                    class="visually-hidden">Next</span>
                                                                            </button>
                                                                        </div>
                                                                
                                                                    <hr style="margin-top:13px;">
                                                                    <div>
                                                                       
                                                                            <span style ="margin-left:5%">가게 번호</span>
                                                                            <span style ="margin-left:5%"><%=dto.getStore_number() %></span>
                                                                        
                                                                    </div>
                                                                   <hr style="margin-top:13px;">
                                                                    <div>                                                                 	
                                                                       
                                                                            <span style ="margin-left:5%">가게 주소</span>
                                                                             <span style ="margin-left:5%"><%=dto.getStore_address() %></span>
                                                                     
                                                                    </div>
                                                                     <hr style="margin-top:13px;">
                                                                    <div>
                                                                       

                                                                            <p style ="margin-left:5%">가게 정보</p>
																			<div style = "margin-left:5%"><%=dto.getStore_info() %></div>
                                                                      	
                                                                    <div>
                                                                       
                                                               


                                                             
                                                            </div>
                                           







                                                        <div _ngcontent-sc102="" class="content-container">
                                                            <app-poi-item _ngcontent-sc102="" _nghost-sc99="">
                                                                <div class="container mt-3" style="text-align:right;">
                                                                   <%if(user_id.equals("admin")) {%>
                                                                    <button class="btn btn-secondary" type="button"
                                                                        onclick="gomodify()">수정</button>
                                                                        <button class="btn btn-secondary" type="button"
                                                                        onclick="godelete()">삭제</button>
                                                                	<%} %>
                                                                </div>
                                                                <div _ngcontent-sc99="" class="divider-container">
                                                                    <app-divider _ngcontent-sc99="" _nghost-sc98="">
                                                                    </app-divider>
                                                                </div>
                                                            </app-poi-item>

                                                        </div>
                                                    </app-poi-list>

                                                </main>
                                                <app-footer _ngcontent-sc105="" _nghost-sc92="">
                                                    <div _ngcontent-sc92="" class="footer-container">
                                                        <div _ngcontent-sc92="" class="policy-links">
                                                            <a _ngcontent-sc92="" href="https://www.daangn.com"
                                                                target="_blank" class="daangn"> 롤리팝 홈페이지 </a> &nbsp; ·
                                                            &nbsp;
                                                            <a _ngcontent-sc92=""
                                                                href="https://www.daangn.com/policy/terms"
                                                                target="_blank"> 이용약관 </a> &nbsp; · &nbsp;
                                                            <a _ngcontent-sc92=""
                                                                href="https://www.daangn.com/policy/privacy"
                                                                target="_blank"> 개인정보 취급방침 </a> &nbsp; · &nbsp;
                                                            <a _ngcontent-sc92=""
                                                                href="https://www.daangn.com/policy/location"
                                                                target="_blank"> 위치기반 서비스 이용약관 </a>
                                                        </div>
                                                        <div _ngcontent-sc92="" class="emails"><span _ngcontent-sc92="">
                                                                고객문의 cs@lollipopservice.com
                                                            </span><span _ngcontent-sc92=""> 제휴문의 contact@lollipop.com
                                                            </span><span _ngcontent-sc92="">
                                                                지역광고 ad@lollipop.com </span><span _ngcontent-sc92="">
                                                                PR문의 pr@lollipop.com </span>
                                                        </div>
                                                        <div _ngcontent-sc92="" class="other-info"> 서울특별시 구로구 디지털로30길
                                                            28, 609호 (롤리팝 서비스) 사업자 등록번호 :
                                                            375-87-00088 직업정보제공사업 신고번호 : J1200020200016
                                                        </div>
                                                        <div _ngcontent-sc92="" class="copyright"> Copyright © Lollipop
                                                            Market Inc. All rights reserved.
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

     window.onload = function () {

     };
     function gomodify() {
         var frm = document.writeform
         frm.action = "<%=request.getContextPath()%>/Store/modify";
         frm.method = "post";
         frm.submit();


     }

     function godelete(){
    	 var frm = document.writeform
         frm.action = "<%=request.getContextPath()%>/Store/delete";
         frm.method = "post";
         frm.submit();
     }

 </script>