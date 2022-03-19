   <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "mlp.project.lollipop.common.*" %>

 <%
	String key = StringUtil.nullToValue(request.getParameter("key"), "1");
	String keyword = StringUtil.nullToValue(request.getParameter("keyword"), "");
	String pg = StringUtil.nullToValue(request.getParameter("pg"), "0");
 %>  
 	      	<input type = "hidden" name = "key" id = "key" value = "<%=key%>"/>
			<input type = "hidden" name = "pg" id = "pg" value ="<%=pg%>"/>
	      <div class="tm-search-form-container">
	        <div class="form-inline tm-search-form">
	          <div class="text-uppercase tm-new-release">
	          	<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" id="searchItem">New Release</button>
       		   <ul class="dropdown-menu">
		          <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('1')">전체</a></li>
	              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('3')">음식</a></li>
	              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('4')">카페</a></li>
	              <li><a class="dropdown-item" href="javascript:void(0);" onclick = "categorySearch('5')">놀거리</a></li>
	           </ul>
              </div>
       		  
	          <div class="form-group tm-search-box">
	            <input type="search" name="keyword" class="form-control tm-search-input" placeholder="제목, 내용 검색" 
	            value="<%=keyword %>" name="keyword" id="keyword">
	            <div onclick="goSearch()">
	            <input type="submit" value="Search" class="form-control tm-search-submit" onclick = "goSearch()">
	            </div>
	          </div>
	          <div class="form-group tm-advanced-box">
	            <a href="#" class="tm-text-white">Go Advanced ...</a>
	          </div>
	        </div>
	      </div>  