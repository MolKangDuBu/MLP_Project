<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "mlp.project.lollipop.common.*" %>
<%

request.setAttribute("commonURL", request.getContextPath());


String user_id= StringUtil.nullToValue(session.getAttribute("user_id"), "");
String user_mail= StringUtil.nullToValue(session.getAttribute("user_mail"), "");
String user_phone= StringUtil.nullToValue(session.getAttribute("user_phone"), "");
%>



      <div class="container tm-navbar-container">
        <div class="row">
          <div class="col-xl-12">
            <nav class="navbar navbar-expand-sm">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                  <a href="${commonURL}/" class="nav-link tm-nav-link tm-text-white">Home</a>
                </li>
                  <li class="nav-item">
                  <a href="${commonURL}/Store/list" class="nav-link tm-nav-link tm-text-white">Store</a>
                </li>
                <li class="nav-item">
                  <a href="${commonURL}/notice/list" class="nav-link tm-nav-link tm-text-white">Notice</a>
                </li>
           
                     <%if(user_id==null || user_id.equals("")){ %>
                <li class="nav-item">
                  <a href="${commonURL}/User/login" class="nav-link tm-nav-link tm-text-white">Login</a>
                </li>
                <%}else{%>
                
                <li class="nav-item">
                  <a href="${commonURL}/User/mypage" class="nav-link tm-nav-link tm-text-white">Mypage</a>
                </li>

                <%} %>
              </ul>
            </nav>
          </div>
        </div>
      </div>
