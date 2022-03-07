<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@page import="java.util.*" %>
<%@page import="mlp.project.lollipop.common.*" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	
	
</head>
<body>
<%
	String key = StringUtil.nullToValue(request.getParameter("key"), "1");
	String keyword = StringUtil.nullToValue(request.getParameter("keyword"), "");
	String pg = StringUtil.nullToValue(request.getParameter("pg"), "0");
	int totalCnt = (Integer)request.getAttribute("totalCnt");
%> 

<%@include file="../include/nav.jsp" %>

<form name="myform" method="get">
	<input type="hidden" name="key" id="key" value="<%=key%>"/>
	<input type="hidden" name="pg"  id="pg" value="<%=pg%>"/>
	<input type="hidden" name="notice_key" id="notice_key" value="0"/>

    <div class="container" style="margin-top:80px">
        <h2>게시판 목록 (${totalCnt}건)</h2>

        <div class="input-group mb-3" style="margin-top:20px;">
            <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown"
            	id="searchItem">
                선택하세요
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#" onclick="changeSearch('1')">선택하세요</a></li>
              <li><a class="dropdown-item" href="#" onclick="changeSearch('2')">제목</a></li>
              <li><a class="dropdown-item" href="#" onclick="changeSearch('3')">내용</a></li>
              <li><a class="dropdown-item" href="#" onclick="changeSearch('4')">제목+내용</a></li>
            </ul>
            <input type="text" class="form-control" placeholder="Search"
            	name="keyword" id="keyword" value="<%=keyword%>">
            <button class="btn btn-secondary" type="button" onclick="goSearch()">Go</button>
          </div>

        <table class="table table-hover ">
        	<colgroup>
        		<col width="8%">
        		<col width="*">
        		<col width="12%">
        		<col width="12%">
        	</colgroup>
            <thead class="table-secondary">
              <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
              </tr>
            </thead>
            <tbody>
            <%
            
            List<NoticeDto> list = (List<NoticeDto>)request.getAttribute("noticeList");
        	for(NoticeDto tempDto : list){
                %>
                  <tr>
                    <td><%=totalCnt - tempDto.getRnum()+1 %></td>
                    <td><a href="#none" onclick="goView('<%=tempDto.getNotice_key()%>')" ><%=tempDto.getNotice_title()%></a></td>
                    <td><%=tempDto.getNotice_id()%></td>
                    <td><%=tempDto.getNotice_wdate()%></td>
                  </tr>
                <%}%>
            </tbody>
          </table>

		
 		  <div class="container mt-3" style="text-align:right;">
       	  	<%=Pager.makeTag(request, 10, totalCnt)%>
       	  </div>
       	  
          <div class="container mt-3" style="text-align:right;">
            <a href="<%=request.getContextPath()%>/notice/write" 
               class="btn btn-secondary">글쓰기</a>
          </div>
          
    </div>
    
   </form>
</body>
</html>

<script>

window.onload=function(){
	let key = '<%=key%>';
	var texts=["", "선택하세요", "제목", "내용", "제목+내용"];
	document.getElementById("searchItem").innerHTML=texts[key];
}


function changeSearch(id)
{
	var texts=["", "선택하세요", "제목", "내용", "제목+내용"];
	document.getElementById("searchItem").innerHTML=texts[id]; //화면에 보이기 위해서 
	document.getElementById("key").value=id;//컨트롤러로 넘기기 위해서
	document.getElementById("keyword").value="";/////
}

function goSearch(){
	let frm = document.myform;
	frm.pg.value=0;
	frm.action = "<%=request.getContextPath()%>/notice/list";
	frm.method="get";
	frm.submit();
}

function goPage(pg)
{
	frm = document.myform;
	frm.pg.value=pg;///////////
	frm.method="get";
	frm.action="${pageContext.request.contextPath}/notice/list";
	frm.submit();
}

function goView(id)
{
	frm = document.myform;
	frm.notice_key.value=id;///////////
	frm.method="get";
	frm.action="${pageContext.request.contextPath}/notice/view";
	frm.submit();
}


</script>
