   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "mlp.project.lollipop.common.*" %>

 <%
	String key = StringUtil.nullToValue(request.getParameter("key"), "");
	String keyword = StringUtil.nullToValue(request.getParameter("keyword"), "");
	String pg = StringUtil.nullToValue(request.getParameter("pg"), "0");
 %>  
 	      	<input type = "hidden" name = "key" id = "key" value = "<%=key%>"/>
			<input type = "hidden" name = "pg" id = "pg" value ="<%=pg%>"/>
	      <div class="tm-search-form-container">
	        <div class="form-inline tm-search-form">
	          <div class="text-uppercase tm-new-release">
	          	<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" id="searchItem">전체보기</button>
       		   <ul class="dropdown-menu">
		          <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('1')">전체보기</a></li>
	              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('3')">음식점</a></li>
	              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('4')">카페</a></li>
	              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('5')">놀거리</a></li>
	           </ul>
              </div>
       		  
	          <div class="form-group tm-search-box">
	            <input type="search" name="keyword" class="form-control tm-search-input" placeholder="검색어를 입력하세요." 
	            value="<%=keyword %>" name="keyword" id="keyword">
	            <div onclick="goSearch()">
	            <input type="submit" value="검색" class="form-control tm-search-submit" onclick = "goSearch()">
	            </div>
	          </div>
	        </div>
	      </div>  