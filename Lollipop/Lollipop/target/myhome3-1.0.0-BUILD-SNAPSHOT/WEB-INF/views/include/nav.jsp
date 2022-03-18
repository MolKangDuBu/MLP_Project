<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "mlp.project.lollipop.common.*" %>
<%

request.setAttribute("commonURL", request.getContextPath());


String user_id= StringUtil.nullToValue(session.getAttribute("user_id"), "");
String user_mail= StringUtil.nullToValue(session.getAttribute("user_mail"), "");
String user_phone= StringUtil.nullToValue(session.getAttribute("user_phone"), "");
%>

     <nav style ="background-color: rgba(241, 19, 123, 0.863);"> 
            <div class="container">
                <ul class="nav justify-content-end">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="${commonURL}/User/login">로그인</a>
                    </li>              
                    <li class="nav-item">
                        <a class="nav-link" href="${commonURL}/User/signup">회원가입</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">고객센터</a>
                    </li>
                </ul>
            </div>
        </nav>