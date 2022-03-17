<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
        <%@page import="mlp.project.lollipop.CAFE_REVIEW.*" %>
            <%@page import="mlp.project.lollipop.common.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<%@include file ="../include/nav.jsp" %>
<%
 	 Cafe_ReviewDto dto = (Cafe_ReviewDto)request.getAttribute("Cafe_ReviewDto");

%>
<!-- key=카페&pg=0&review_id=&review_key=0&keyword=&review_category=2 -->
 <form name="viewform" id="viewform">
 <input type="hidden" name="review_key" id="review_key" value="<%=dto.getReview_key() %>" />
 <input type="hidden" name="store_key" id="store_key" value="<%=dto.getStore_key() %>" />
 <input type="hidden" name="review_category" id="review_category" value="2" />
 <input type="hidden" name="key" id="key" value="" />


 <div class="container" style="margin-top:80px">
        <h2>게시판 상세보기</h2>
        <table class="table table-hover " style="margin-top:30px;">
            <tbody>
              <tr class="table-secondary">
                <th >카페명</th>
                <td colspan="3"><%=dto.getReview_title()%></td>
              </tr>
              <tr >
                <th >작성자</th>
                <td><%=dto.getReview_id()%></td>
                <th>작성일</th>
                <td><%=dto.getReview_wdate()%></td>
       
              </tr>
              <tr>
                <th>주소</th>
                <td><%=dto.getReview_address() %></td>
              </tr>
              
              <tr>
                <td colspan="4">             
					<%=dto.getReview_contents().replaceAll("\n", "<br/>")%>
                </td>
              </tr>
              
              <%if(!dto.getReview_image1().equals("")) {%>
	               <tr>
	                <td colspan="4">             
						<img src="../upload/<%=dto.getReview_image1()%>"/>
	                </td>
	              </tr>
              <%} %>
              
               <%if(!dto.getReview_image2().equals("")) {%>
                <tr>
                <td colspan="4">             
					<img src="../upload/<%=dto.getReview_image2()%>"/>
                </td>
              </tr>
               <%} %>
               
               <%if(!dto.getReview_image3().equals("")) {%>
                <tr>
                <td colspan="4">             
					<img src="../upload/<%=dto.getReview_image3()%>"/>
                </td>
              </tr>
               <%} %>
              
            </tbody>
          </table>

 
       
          <div class="container mt-3" style="text-align:right;">
          <%if(user_id.equals(dto.getReview_id())) { %>
            <a href="#none" onclick="goList()" class="btn btn-secondary">목록</a>
         	<a href="#none" onclick="goModify()" class="btn btn-secondary">수정</a>
         	<a href="#none" onclick="goDelete()" class="btn btn-secondary">삭제</a>
       	  <%} %>
          </div>
          
          <div class="container mt-3" style="text-align:right;">
           <%if(user_id.equals(dto.getReview_id())) { %>
           <a href="#none" onclick="goReviewList()" class="btn btn-secondary">가게 리뷰 보기</a> 
           <%} %>
           
          
    </div>
    </form>

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

</body>
</html>
<script>

function goList()
{	
	location.href="<%=request.getContextPath()%>/Cafe_Review/list";
}

function goReviewList()
{
	var frm = document.viewform;	
	frm.action="<%=request.getContextPath()%>/Cafe_Review/Reviewlist"
	frm.submit();
}

function goModify()
{
	var frm = document.viewform;
	frm.action="<%=request.getContextPath()%>/Cafe_Review/modify";
	frm.submit();
}


function goDelete()
{
	var frm = document.viewform
	frm.action = "<%=request.getContextPath()%>/Cafe_Review/delete";
	frm.method = "post";
	frm.submit();	
}

</script>
