<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mlp.project.lollipop.REVIEW.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>

<%@include file ="../include/nav.jsp" %>

	<%
 	 ReviewDto dto = (ReviewDto)request.getAttribute("reviewDto");
  	 %>

 <div class="container" style="margin-top:80px">
        <h2>게시판 상세보기</h2>
        <table class="table table-hover " style="margin-top:30px;">
            <tbody>
              <tr class="table-secondary">
                <th >제목</th>
                <td colspan="3"><%=dto.getReview_title()%></td>
              </tr>
              <tr >
                <th >작성자</th>
                <td><%=dto.getReview_id()%></td>
                <th>작성일</th>
                <td><%=dto.getReview_wdate()%></td>
       
              </tr>
              <tr>
                <th colspan="4"  >내용</td>
              </tr>
              
              <tr>
                <td colspan="4">             
					<%=dto.getReview_contents().replaceAll("\n", "<br/>")%>
                </td>
              </tr>
              
               <tr>
                <td colspan="4">             
					<img src="../upload/<%=dto.getReview_image1()%>"/>
                </td>
              </tr>
              
                <tr>
                <td colspan="4">             
					<img src="../upload/<%=dto.getReview_image2()%>"/>
                </td>
              </tr>
              
                <tr>
                <td colspan="4">             
					<img src="../upload/<%=dto.getReview_image3()%>"/>
                </td>
              </tr>
              
            </tbody>
          </table>

 
       
          <div class="container mt-3" style="text-align:right;">
            <a href="#none" onclick="goList()" class="btn btn-secondary">목록</a>
         	<a href="#none" onclick="goModify()" class="btn btn-secondary">수정</a>
         	<a href="#none" onclick="goDelete()" class="btn btn-secondary">삭제</a>
          </div>
          
    </div>

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
	var frm = document.myform;
	frm.action="<%=request.getContextPath()%>/Review/list";
	frm.submit();
}

function goModify()
{
	var frm = document.myform;
	frm.action="<%=request.getContextPath()%>/Review/modify";
	frm.submit();
}


function goDelete()
{
	if( confirm("삭제하시겠습니까?"))
	{
			var userid='<%=user_id%>';
			
			if(userid =="")
				{
					alert("로그인하세요");
					location.href="${commonURL}/User/login";
				}
			
			var queryString = $("form[name=myform]").serialize();
			 // console.log( frmData );
		   $.ajax({
		      url:"${commonURL}/Review/delete",
		     data: queryString,
		     dataType:"JSON",
		      type:"POST",
		   })
		   .done( (result)=>{
				alert("삭제되었습니다.")
			 	location.href="${commonURL}/Review/list";
		   })
		   .fail( (error)=>{
		      console.log(error);
		   })
		}
	
}

</script>
