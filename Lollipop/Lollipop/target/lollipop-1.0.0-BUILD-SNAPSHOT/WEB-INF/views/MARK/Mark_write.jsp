<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="com.woori.yourhome.common.*" %>
<%@page import="com.woori.yourhome.gallery.*" %>
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
    <%@include file="../include/nav.jsp" %>
	<%
	GalleryDto dto = (GalleryDto)request.getAttribute("galleryDto");
	%>

	<form  name="myform" method="post" enctype="multipart/form-data">	
		<input type="text" name="id" value="<%=dto.getId()%>" />
		
    <div class="container" style="margin-top:80px">
        <h2>갤러리 쓰기</h2>

        <table class="table table-hover " style="margin-top: 30px;">
            <colgroup>
                <col width="25%">
                <col width="*">
            </colgroup>
        
            <tbody>
              <tr>
                <td>제목</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                        <input type="text" class="form-control" id="title" name="title" 
                        placeholder="제목을 입력하세요" value="<%=dto.getTitle()%>">
                    </div>
                </td>
              </tr>       
              <tr>
                <td>작성자</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                        <input type="text" class="form-control" id="writer" name="writer" 
                        placeholder="이름을 입력하세요" value="<%=dto.getWriter()%>">
                    </div>
                </td>
              </tr>      
              <tr>
                <td>내용</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                      <textarea class="form-control" rows="5" id="comment" name="comment"><%=dto.getComment()%></textarea>
                    </div>
                </td>
              </tr>    
              
              <tr>
                <td>이미지</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                        <input type="file" class="form-control" id="upload" name="upload" 
                        placeholder="이미지를 업로드하세요" value="<%=dto.getWriter()%>">
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
	if( frm.title.value.trim().length<10)
	{
		alert("제목을 10글자 이상 작성하세요");
		frm.title.focus();
		return false;
	}
	
	if( frm.writer.value.trim().length==0)
	{
		alert("이름을 작성하세요");
		frm.writer.focus();
		return false;
	}
	
	if( frm.comment.value.trim().length<10)
	{
		alert("내용을 10글자 이상 작성하세요");
		frm.comment.focus();
		return false;
	}

	frm.action="<%=request.getContextPath()%>/gallery/save";
	frm.method="post";
	frm.submit(); //서버로 전송하기 
	
}
</script>







