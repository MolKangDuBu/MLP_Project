<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="mlp.project.lollipop.CAFE_REVIEW.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="//cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
	<script type="text/javascript" src="/myhome1/ckfinder/ckfinder.js"></script>
</head>
<body>
   
	<%
   	Cafe_ReviewDto dto = (Cafe_ReviewDto)request.getAttribute("ReviewDto");
   	%>

	<form  name="myform" action="/Review/save" enctype="multipart/form-data">	
		<input type="text" name="review_id" value="<%=dto.getReview_id()%>" />
		
    <div class="container" style="margin-top:80px">
        <h2>갤러리 쓰기</h2>

        <table class="table table-hover " style="margin-top: 30px;">
            <colgroup>
                <col width="25%">
                <col width="*">
            </colgroup>
        
            <tbody>
              <tr>
                <td>카페명</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                        <input type="text" class="form-control" id="review_title" name="review_title" 
                        placeholder="카페명을 입력하세요" value="<%=dto.getReview_title()%>">
                    </div>
                </td>
              </tr>       
              <tr>
                <td>주소</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                        <input type="text" class="form-control" id="review_address" name="review_address" 
                        placeholder="주소를 입력하세요" value="<%=dto.getReview_address()%>">
                    </div>
                </td>
              </tr>      
              <tr>
                <td>내용</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                      <textarea class="form-control" rows="5" id="review_contents" name="review_comment"><%=dto.getReview_contents()%></textarea>
                    </div>
                </td>
              </tr>    
              
              <tr>
                <td>이미지1</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                        <input type="file" class="form-control" id="upload" name="upload" 
                        placeholder="이미지를 업로드하세요" value="<%=dto.getReview_image1()%>">
                    </div>
                </td>
              </tr>
              <td>이미지2</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                        <input type="file" class="form-control" id="upload" name="upload" 
                        placeholder="이미지를 업로드하세요" value="<%=dto.getReview_image2()%>">
                    </div>
                </td>
              </tr>
              <td>이미지3</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                        <input type="file" class="form-control" id="upload" name="upload" 
                        placeholder="이미지를 업로드하세요" value="<%=dto.getReview_image3()%>">
                    </div>
                </td>
              </tr>
                    
            </tbody>
          </table>
       
          <div class="container mt-3" style="text-align:right;">
            <input type="button" class="btn btn-secondary" value="등록" onclick="goWrite()">
          </div>
          
    </div>
    
    </form>
</body>
</html>

<script>
function goWrite()
{
	var frm = document.myform;
	if( frm.review_title.value.trim().length==0)
	{
		alert("카페명을 입력하세요");
		frm.title.focus();
		return false;
	}
	
	if( frm.review_address.value.trim().length==0)
	{
		alert("주소를 입력하세요");
		frm.writer.focus();
		return false;
	}
	
	if( frm.review_contents.value.trim().length<10)
	{
		alert("내용을 10글자 이상 작성하세요");
		frm.comment.focus();
		return false;
	}

	frm.action="<%=request.getContextPath()%>/Review/save";
	frm.method="post";
	frm.submit(); //서버로 전송하기 
	
}
</script>







