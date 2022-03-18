<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>자주묻는 질문</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div style="width: 50%; margin: auto;">
        <nav style ="background-color: rgba(252, 249, 249, 0.966);"> 
            <div class="container">
                <ol class="nav justify-content-end">
                    <li class="nav-item">
                        <a href="#">
                            <img src="assets/img/lollipop.png" width="15%" style="margin: 0px;">
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#" style="color: #000000;">로그인</a>
                    </li>              
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="color: #000000;">회원가입</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="color: #000000;">고객센터</a>
                    </li>
                </ol>
            </div>
        </nav>

        <div class="faq_area section_padding_130" id="faq">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-sm-10 col-lg-8">
                        <div class="section_heading text-center wow fadeInUp" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                            <h2 style="font-weight: bold;">자주묻는 질문</h2>
                            <div class="search">
                                <input type="text" style="width: 204%; border: 1px solid #bbb; border-radius: 8px; padding: 10px 12px; font-size: 14px;" placeholder="질문을 입력하세요">
                                <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" style="position : absolute; width: 17px; top: 12px; right: -300px; margin: 0;">
                            </div>
                                <div class="support-button text-center d-flex align-items-center justify-content-center mt-4 wow fadeInUp" data-wow-delay="0.5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">
                                    <p class="mb-0 px-2">찾으시는 답변이 없으신가요 ?</p>
                                    <a href="#"> 1:1 문의하기</a>
                                </div>
                        </div>
                        <div class="accordion faq-accordian" id="faqAccordion">
                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                                <div class="card-header" id="headingOne">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">질문 1<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseOne" aria-labelledby="headingOne" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>답변 1</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">
                                <div class="card-header" id="headingTwo">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">질문 2<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseTwo" aria-labelledby="headingTwo" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>답변 2</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                                <div class="card-header" id="headingThree">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">질문 3<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseThree" aria-labelledby="headingThree" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>답변 3</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                                <div class="card-header" id="headingThree">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">질문 4<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseFour" aria-labelledby="headingFour" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>답변 4</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card border-0 wow fadeInUp" data-wow-delay="0.4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                                <div class="card-header" id="headingThree">
                                    <h6 class="mb-0 collapsed" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">질문 5<span class="lni-chevron-up"></span></h6>
                                </div>
                                <div class="collapse" id="collapseFive" aria-labelledby="headingFive" data-parent="#faqAccordion">
                                    <div class="card-body">
                                        <p>답변 5</p>
                                    </div>
                                </div>
                            </div>
                            <div style="margin: auto; align-items: center; display: flex; flex-direction: column; ">
                                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                                    <div class="btn-group width:auto" role="group" aria-label="Third group">
                                        <button type="button" class="btn btn-secondary">이전</button>
                                        <button type="button" class="btn btn-info">1</button>
                                        <button type="button" class="btn btn-info">2</button>
                                        <button type="button" class="btn btn-info">3</button>
                                        <button type="button" class="btn btn-info">4</button>
                                        <button type="button" class="btn btn-info">5</button>                           
                                        <button type="button" class="btn btn-secondary">다음</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

<style type="text/css">
body{margin-top:20px;}
.section_padding_130 {
    padding-top: 40px;
    padding-bottom: 30px;
}
.search {
  position: relative;
  width: 300px;
}

.btn-secondary{
    align-items: center;
    background-color: #fff5fc;
    color: #000000;
    border-color: #fff5fc;
}

.btn-info{
    align-items: center;
    background-color: #fff5fc;
    color: #000000;
    border-color: #fff5fc;
}

.faq_area {
    position: relative;
    z-index: 1;
    background-color: #fff5fc;
}

.faq-accordian {
    margin-top: 20px;
    position: relative;
    z-index: 1;
}
.faq-accordian .card {
    position: relative;
    z-index: 1;
    margin-bottom: 1.5rem;
}
.faq-accordian .card:last-child {
    margin-bottom: 0;
}
.faq-accordian .card .card-header {
    background-color: #ffffff;
    padding: 0;
    border-bottom-color: #ebebeb;
}
.faq-accordian .card .card-header h6 {
    cursor: pointer;
    padding: 1.75rem 2rem;
    color: #f87c7c;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    -ms-grid-row-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
}
.faq-accordian .card .card-header h6 span {
    font-size: 1.5rem;
}
.faq-accordian .card .card-header h6.collapsed {
    color: #070a57;
}
.faq-accordian .card .card-header h6.collapsed span {
    -webkit-transform: rotate(-180deg);
    transform: rotate(-180deg);
}
.faq-accordian .card .card-body {
    padding: 1.75rem 2rem;
}
.faq-accordian .card .card-body p:last-child {
    margin-bottom: 0;
}

@media only screen and (max-width: 575px) {
    .support-button p {
        font-size: 14px;
    }
}

.support-button i {
    color: #3f43fd;
    font-size: 1.25rem;
}
@media only screen and (max-width: 575px) {
    .support-button i {
        font-size: 1rem;
    }
}

.support-button a {
    text-transform: capitalize;
    color: #ec166fc7;
    font-weight: bold;
}
@media only screen and (max-width: 575px) {
    .support-button a {
        font-size: 13px;
    }
}



</style>

<script type="text/javascript">

</script>
</html>