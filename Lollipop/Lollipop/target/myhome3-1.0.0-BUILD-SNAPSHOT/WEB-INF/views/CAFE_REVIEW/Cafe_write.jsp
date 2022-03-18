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
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="//cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>
	<script type="text/javascript" src="/lollipop/ckfinder/ckfinder.js"></script>
</head>
<body>
   
	<%
	Cafe_ReviewDto dto = (Cafe_ReviewDto)request.getAttribute("Cafe_ReviewDto");
	%>
	<%@include file="../include/nav.jsp" %>

	<form  name="myform" enctype="multipart/form-data">	
		<input type="hidden" id = "review_id" name="review_id" value="<%=user_id%>" />
		<input type ="hidden" id = review_key name = review_key value =<%=dto.getReview_key()%>>
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
              <input type = "hidden"  class = "form-control" id = "review_contents" name = "review_contents"  value = "aa">
                <td>내용</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                      <textarea class="form-control" rows="5" id="editor" name="editor"><%=dto.getReview_contents()%></textarea>
                   	  <input type ="hidden" id = "review_contents" name ="review_contents">
                    </div>
                </td>
              </tr>    
              
              <tr>
                <td>이미지1</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                        <input type="file" class="form-control" id="upload1" name="upload1" 
                        placeholder="이미지를 업로드하세요" value="<%=dto.getReview_image1()%>">
                    </div>
                </td>
              </tr>
              <td>이미지2</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                        <input type="file" class="form-control" id="upload2" name="upload2" 
                        placeholder="이미지를 업로드하세요" value="<%=dto.getReview_image2()%>">
                    </div>
                </td>
              </tr>
              <td>이미지3</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                        <input type="file" class="form-control" id="upload3" name="upload3" 
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
window.onload = function(){
	   CKEDITOR.editorConfig = function(config){
		   config.enterMode = CKEDITOR.ENTER_BR
	   };
	   CKEDITOR.instances.editor.setData('<%=dto.getReview_contents()%>')	  
	   
}


function goWrite()
{

	$("#review_contents").val(CKEDITOR.instances.editor.getData());
	var frm = document.myform;
	if( frm.review_title.value.trim().length==0)
	{
		alert("카페명을 입력하세요");
		frm.review_title.focus();
		return false;
	}
	
	if( frm.review_address.value.trim().length==0)
	{
		alert("주소를 입력하세요");
		frm.review_address.focus();
		return false;
	}

	frm.action="<%=request.getContextPath()%>/Cafe_Review/save";
	frm.method="post";
	frm.submit(); //서버로 전송하기 
	
}

var editor = CKEDITOR.editorConfig = function( config ) {
	config.language = 'es';
	config.uiColor = '#F7B42C';
	config.height = 300;
	config.toolbarCanCollapse = true;
	config.extraPlugins = 'uploadimage';
};

var editor = CKEDITOR.replace( 'editor' );
CKFinder.setupCKEditor( editor, '/lollipop/ckfinder' ) ;

</script>







