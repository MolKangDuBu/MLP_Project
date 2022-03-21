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

  <title>스토어</title>
<!--

Template 2101 Insertion

http://www.tooplate.com/view/2101-insertion

-->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

  <!-- load CSS -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">        <!-- Google web font "Open Sans" -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">                                            <!-- https://getbootstrap.com/ -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css">                                      <!-- Font awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tooplate-style.css">                                           <!-- Templatemo style -->
  <!-- load JS -->
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.slim.min.js"></script> <!-- https://jquery.com/ -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
<form name = "listform" id = "listform">
 <%
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
    <%@include file="../include/nav.jsp" %>

      <div class="container text-center tm-welcome-container">
        <div class="tm-welcome">
          <p class="fas tm-fa-big tm-fa-mb-big">
          <img src="${pageContext.request.contextPath}/resources/img/main.png" alt="Image" class="img-fluid">
          Lollipop</p>
          <h1 class="text-uppercase mb-3 tm-site-name"></h1>
          <p class="tm-site-description"></p>
        </div>
      </div>

    </div>

     				<!-- 검색창 -->
    <div class="container">
 		<%@include file="../include/search.jsp" %>


	      <!-- 게시판명 -->
	<input type = "hidden" name = "store_key" id = "store_key" value ="0"/> 
    <input type="hidden" value="<%=user_id%>" id="login_user_id" >
  <div class="row">
        <div class="col-lg-12">
          <div class="tm-tag-line-store">
          <h2 class="tm-tag-line-title">스토어</h2>
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
                	<img src="${pageContext.request.contextPath}/resources/img/markoff.png" style="width:25px; height:25px; margin-top:30px;" onclick="addMarkList('<%=tempDto.getStore_key()%>')">
                </div>
             	 <%} else { %>
                <div class="tm-buy-box">
                  <img src="${pageContext.request.contextPath}/resources/img/markon.png" style="width:30px; height:30px; margin-top:30px;" onclick="addMarkList('<%=tempDto.getStore_key()%>')">
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
   
      <footer class="row">
        <div class="col-xl-12">
          <p class="text-center p-4">Copyright &copy; <span class="tm-current-year">2018</span> Lollipop Inc. All rights reserved.
        </div>
      </footer>
    </div> <!-- .container -->

  </div> <!-- .main -->


  
  <script>

    /* DOM is ready*/
  $(function () {

      if (renderPage) {
        $('body').addClass('loaded');
      }

      $('.tm-current-year').text(new Date().getFullYear());  // Update year in copyright
    });



  </script>
     </form>
</body>
</html>
<script>
window.onload = function(){
	
	var texts =['선택','전체보기','','음식', '카페', '놀거리'];
	if('<%=key%>' !=""){
	let key = '<%=key%>';
	document.getElementById("searchItem").innerHTML = texts[key];
	}else{
	document.getElementById("searchItem").innerHTML = texts[0];
	}
}
	
			
function changeSearch(id){
	
	var texts =['','전체보기','','음식', '카페', '놀거리'];
	document.getElementById("searchItem").innerHTML = texts[id];
	document.getElementById("key").value = id;
	document.getElementById("keyword").value= "";
}

function gosearch(){
	if(document.getElementById("key").value ==0){
		alert("카테고리를 선택해주세요.");
		return false;
	}
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