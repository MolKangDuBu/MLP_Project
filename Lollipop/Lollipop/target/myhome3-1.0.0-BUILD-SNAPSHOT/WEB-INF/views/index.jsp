<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "mlp.project.lollipop.common.*" %>
    <%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.TODAY_REVIEW.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>test</title>

    <link rel="icon" type="resources/Image/x-icon" href="resources/assets/favicon.ico" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
   	<%@include file ="./include/board.jsp"  %>
    <link href="resources/css/styles.css" rel="stylesheet" />

</head>
<body>
<%List<Today_ReviewDto> list = (List<Today_ReviewDto>)request.getAttribute("TodayList"); %>
    <div style="width: 80%; margin: auto;">
    <!-- Navigation-->
  <%@include file="./include/nav.jsp" %>

 
        <!-- Masthead-->
        <header class="masthead">
            <div class="container position-relative">
                <div class="row justify-content-center">
                    <div class="col-xl-6">
                        <div class="text-center text-white">
                            <!-- Page heading-->
                            <h1 class="mb-5">test</h1>
                            <!-- Signup form-->
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- * * SB Forms Contact Form * *-->
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- This form is pre-integrated with SB Forms.-->
                            <!-- To make this form functional, sign up at-->
                            <!-- https://startbootstrap.com/solution/contact-forms-->
                            <!-- to get an API token!-->
                            <form class="form-subscribe" id="contactForm" data-sb-form-api-token="API_TOKEN">
                                <!-- Email address input-->
                                <div class="row">
                                    <div class="col">
                                        <input class="form-control form-control-lg" id="emailAddress" type="email"
                                            placeholder="Email Address" data-sb-validations="required,email" />
                                        <div class="invalid-feedback text-white"
                                            data-sb-feedback="emailAddress:required">Email Address is required.</div>
                                        <div class="invalid-feedback text-white" data-sb-feedback="emailAddress:email">
                                            Email Address Email is not valid.</div>
                                    </div>
                                    <div class="col-auto"><button class="btn btn-primary btn-lg disabled"
                                            id="submitButton" type="submit">검색</button></div>
                                </div>
                                <!-- Submit success message-->
                                <!---->
                                <!-- This is what your users will see when the form-->
                                <!-- has successfully submitted-->
                                <div class="d-none" id="submitSuccessMessage">
                                    <div class="text-center mb-3">
                                        <div class="fw-bolder">Form submission successful!</div>
                                        <p>To activate this form, sign up at</p>
                                        <a class="text-white"
                                            href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                    </div>
                                </div>
                                <!-- Submit error message-->
                                <!---->
                                <!-- This is what your users will see when there is-->
                                <!-- an error submitting the form-->
                                <div class="d-none" id="submitErrorMessage">
                                    <div class="text-center text-danger mb-3">Error sending message!</div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Icons Grid-->
        <br/>       
    <div class="row" style = "text-align: center;">
        <div class="card" style="width: 18rem; margin-left: 5%;"> 
            <img src="resources/Image/img1.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">팝딜</h5>
              <p class="card-text">test</p>
              <a href="${commonURL}/Today/list" class="btn btn-primary">이동</a>
            </div>
          </div>
        <div class="card" style="width: 18rem; margin-left: 5%;"> 
            <img src="resources/Image/food.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">음식</h5>
              <p class="card-text">test</p>
              <a href="${commonURL}/FOOD_Review/list" class="btn btn-primary">이동</a>
            </div>
          </div>
          <div class="card" style="width: 18rem; margin-left: 5%;">
            <img src="resources/Image/coffee.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">카페</h5>
              <p class="card-text">test</p>
              <a href="${commonURL}/Cafe_Review/list" class="btn btn-primary">이동</a>
            </div>
          </div>
          <div class="card" style="width: 18rem; margin-left: 5%;">
            <img src="resources/Image/park.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title">놀거리</h5>
              <p class="card-text">test</p>
              <a href="${commonURL}/PLAY_Review/list" class="btn btn-primary">이동</a>
            </div>
          </div>
        </div>
        <br/>

       <div class ="container row" style = " margin :0 auto"; > 
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">

            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner" >
	            <%for(int i =0;i<list.size();i++){ %>
	                <div class="carousel-item active" >
	                    <img src="${pageContext.request.contextPath}/upload/<%=list.get(i).getReview_image1()%>" width =100px height=500px class="d-block w-100" >
	                </div>
	             <%} %>   

            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

        <!-- Image Showcases-->

        <!-- Testimonials-->

        <!-- Call to Action-->

        <!-- Submit success message-->
        <!---->
        <!-- This is what your users will see when the form-->
        <!-- has successfully submitted-->
        <div class="d-none" id="submitSuccessMessage">
            <div class="text-center mb-3">
                <div class="fw-bolder">Form submission successful!</div>
                <p>To activate this form, sign up at</p>
                <a class="text-white"
                    href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
            </div>
        </div>
        <!-- Submit error message-->
        <!---->
        <!-- This is what your users will see when there is-->
        <!-- an error submitting the form-->
        <div class="d-none" id="submitErrorMessage">
            <div class="text-center text-danger mb-3">Error sending message!</div>
        </div>
        </form>
    </div>
    </div>
    </div>
    </section>

    </div>


    <!-- Footer-->
  <app-footer _ngcontent-sc105="" _nghost-sc92="" style="width: 80%; margin: auto; ">
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
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="resources/js/scripts.js"></script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>
