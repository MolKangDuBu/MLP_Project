<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "mlp.project.lollipop.common.*" %>
    <%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.STORE.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Insertion HTML5 Template</title>
<!--

Template 2101 Insertion

http://www.tooplate.com/view/2101-insertion

-->
  <!-- load CSS -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">        <!-- Google web font "Open Sans" -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">                                            <!-- https://getbootstrap.com/ -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">                                      <!-- Font awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tooplate-style.css">                                           <!-- Templatemo style -->

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
    <%@include file="../include/nav.jsp" %>
 <%
	String key = StringUtil.nullToValue(request.getParameter("key"), "1");
	String keyword = StringUtil.nullToValue(request.getParameter("keyword"), "");
	String pg = StringUtil.nullToValue(request.getParameter("pg"), "0");
	int totalCnt = (Integer)request.getAttribute("totalCnt");
%>
  <!-- Loader -->
  <div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
  </div>

  <div class="tm-main">

    <div class="tm-welcome-section">
      <div class="container tm-navbar-container">
        <div class="row">
          <div class="col-xl-12">
            <nav class="navbar navbar-expand-sm">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                  <a href="${commonURL}/index2.html" class="nav-link tm-nav-link tm-text-white active">Home</a>
                </li>
                <li class="nav-item">
                  <a href="about.html" class="nav-link tm-nav-link tm-text-white">About</a>
                </li>
                <li class="nav-item">
                  <a href="contact.html" class="nav-link tm-nav-link tm-text-white">Contact</a>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>

      <div class="container text-center tm-welcome-container">
        <div class="tm-welcome">
          <i class="fas tm-fa-big fa-music tm-fa-mb-big"></i>
          <h1 class="text-uppercase mb-3 tm-site-name"></h1>
          <p class="tm-site-description"></p>
        </div>
      </div>

    </div>

    <div class="container">
      <div class="tm-search-form-container">
        <form action="index.html" method="GET" class="form-inline tm-search-form">
          <div class="text-uppercase tm-new-release">New Release</div>
          <div class="form-group tm-search-box">
            <input type="text" name="keyword" class="form-control tm-search-input" placeholder="Type your keyword ...">
            <input type="submit" value="Search" class="form-control tm-search-submit">
          </div>
          <div class="form-group tm-advanced-box">
            <a href="#" class="tm-text-white">Go Advanced ...</a>
          </div>
        </form>
      </div>

<form name = "listform" id = "listform">
	<input type = "hidden" name = "key" id = "key" value = "<%=key%>"/>
	<input type = "hidden" name = "pg" id = "pg" value ="<%=pg%>"/>
	<input type = "hidden" name = "store_key" id = "store_key" value ="0"/> 
    <input type="hidden" value="<%=user_id%>" id="login_user_id" >
  <div class="row">
        <div class="col-lg-12">
          <div class="tm-tag-line">
          <h2 class="tm-tag-line-title">Store_board</h2>
          </div>
        </div>
      </div>

      <div class="row mb-5">
        <div class="col-xl-12">
          <div class="media-boxes">
<!-- 게시판 시작 -->
			<%
            	List<StoreDto> list = (List<StoreDto>)request.getAttribute("StoreList");
			 
           		for(StoreDto tempDto : list){
            %>
            <div class="media" >
              <img  onclick ="goView(<%=tempDto.getStore_key()%>)" src="${pageContext.request.contextPath}/upload/<%=tempDto.getStore_image1()%>" width = "100px" height ="117px" alt="Image" class="mr-3">
              <div class="media-body tm-bg-gray" >
                <div class="tm-description-box" onclick ="goView(<%=tempDto.getStore_key()%>)">
                  <h5 class="tm-text-blue"><%=tempDto.getStore_name()%></h5>
                  <p class="mb-0"> <%=tempDto.getStore_address()%></p>
                </div>
           	 <%if(user_id!=null && !user_id.equals("")){ %>
                  <% if (tempDto.getStore_mark().equals("N")){ %>
                <div class="tm-buy-box">
                	<img src="${pageContext.request.contextPath}/resources/img/markoff.png" style="width:25px; height:25px;" onclick="addMarkList('<%=tempDto.getStore_key()%>')">
                </div>
             	 <%} else { %>
                <div class="tm-buy-box">
                  <img src="${pageContext.request.contextPath}/resources/img/markon.png" style="width:25px; height:25px;" onclick="addMarkList('<%=tempDto.getStore_key()%>')">
                </div>
             	<%}%>
             <%} %>
              </div>
            </div>
		<%} %>
		  
		  </div> <!-- media-boxes -->
		     
        </div>
        <div style="margin:0 auto">
             <%=Pager.makeTag(request, 10, totalCnt) %>
        </div>
        <div class="container mt-3" style="text-align:right;">
		 	<a href="<%=request.getContextPath()%>/Store/write" 
						class="btn btn-secondary">글쓰기</a>
       	</div> 
   
      </div>

      <div class="row tm-mb-medium">
        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 mb-4">
          <h4 class="mb-4 tm-font-300">Latest Albums</h4>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Sed fringilla consectetur</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Mauris porta nisl quis</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Quisque maximus quam nec</a>
          <a href="#" class="tm-text-blue-dark d-block">Class aptent taciti sociosqu ad</a>
        </div>
        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 mb-4">
          <h4 class="mb-4 tm-font-300">Our Pages</h4>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Nam dapibus imperdiet</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Primis in faucibus orci</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Sed interdum blandit dictum</a>
          <a href="#" class="tm-text-blue-dark d-block">Donec non blandit nisl</a>
        </div>
        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
          <h4 class="mb-4 tm-font-300">Quick Links</h4>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Nullam scelerisque mauris</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Vivamus tristique enim non orci</a>
          <a href="#" class="tm-text-blue-dark d-block mb-2">Luctus et ultrices posuere</a>
          <a href="#" class="tm-text-blue-dark d-block">Cubilia Curae</a>
        </div>
      </div>
      </form>
      <footer class="row">
        <div class="col-xl-12">
          <p class="text-center p-4">Copyright &copy; <span class="tm-current-year">2018</span> Your Company Name 
          
          - Design:  Tooplate</p>
        </div>
      </footer>
    </div> <!-- .container -->

  </div> <!-- .main -->

  <!-- load JS -->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.slim.min.js"></script> <!-- https://jquery.com/ -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
  <script>

    /* DOM is ready*/
  $(function () {

      if (renderPage) {
        $('body').addClass('loaded');
      }

      $('.tm-current-year').text(new Date().getFullYear());  // Update year in copyright
    });



  </script>
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
	frm.action = "<%=request.getContextPath()%>/Store/list";
	frm.method ="GET";
	frm.submit();
	
}

function gosearch(){
	let frm = document.listform;
	frm.pg.value=0;
	frm.action = "<%=request.getContextPath()%>/Store/list";
	frm.method ="GET";
	frm.submit();
}

function goPage(pg){
	
	frm = document.listform;
	frm.pg.value = pg;
	frm.method = "get";
	frm.action = "${pageContext.request.contextPath}/Store/list";
	frm.submit();
}

function goView(id){
	frm = document.listform;
	frm.store_key.value = id;
	frm.method = "get";
	frm.action = "${pageContext.request.contextPath}/Store/view";
	frm.submit();
}

var userid = $("#login_user_id").val();
//input태그를 hidden속성으로 숨겨서 값을 가져왔다.
$("#mymark_btn").click(function(event) {
	frm = document.listform;
	frm.method = "get";
	frm.action = "${pageContext.request.contextPath}/mark/list";
	frm.submit();
		
});
function addMarkList(id){
	
	// ajax 로 서버를 다녀와야함
	document.listform.store_key.value = id;
	var queryString = $("form[name=listform]").serialize(); 
	console.log(queryString);
	$.ajax({
	  url:"${pageContext.request.contextPath}/mark/add",
	  data:queryString,
	  type:"POST",
	  dataType:"json"
	})
	.done( (result)=>{
		
	  	alert(result.result);
	  	location.reload();
	 	
	 })
	.fail( (error)=>{
	   console.log(error);
	})
}
</script>