<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
    
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
</head>
<body>
<%@include file="../include/nav.jsp" %>
	<%
	NoticeDto dto = (NoticeDto)request.getAttribute("NoticeDto");
	%>

	<form  name="myform"  method="post"    >
		<input type="text" name="seq"      id="seq"      value="<%=dto.getSeq()%>" />
		<input type="text" name="group_id" id="group_id" value="<%=dto.getGroup_id()%>" />
		<input type="text" name="g_level"  id="g_level"  value="<%=dto.getG_level()%>" />
		<input type="text" name="depth"    id="depth"    value="<%=dto.getDepth()%>" />
		<input type="text" name="mode"     id="mode"     value="insert" />
		
    <div class="container" style="margin-top:80px">
        <h2>게시판 쓰기</h2>

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
                      <input type="hidden" id="writer" name="writer"  value="<%=userid%>">
                      <input type="text" class="form-control" id="username" name="username" 
                        placeholder="이름을 입력하세요" value="<%=username%>">
                    </div>
                </td>
              </tr>      
              <tr>
                <td>내용</td>
                <td>
                    <div class="mb-3" style="margin-top:13px;">
                      <textarea class="form-control" rows="5" id="contents" name="contents"><%=dto.getContents()%></textarea>
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

	
	if( frm.contents.value.trim().length<10)
	{
		alert("내용을 10글자 이상 작성하세요");
		frm.contents.focus();
		return false;
	}

	 //var frmData = new FormData(document.myform);  -- 파일전송시에 사용하자 
	 //enctype="multipart/~"
	 
	 var queryString = $("form[name=myform]").serialize(); 
	 //파일전송없을때 안정적으로 감
	 console.log(queryString);
	 
     $.ajax({
      url:"${commonURL}/notice/save",
      data:queryString,
      type:"POST",
      queryString
    })
    .done( (result)=>{
     	
      alert("등록되었습니다.");
      location.href="${commonURL}/notice/list";
      
    })
    .fail( (error)=>{
       console.log(error);
    });
}
</script>

