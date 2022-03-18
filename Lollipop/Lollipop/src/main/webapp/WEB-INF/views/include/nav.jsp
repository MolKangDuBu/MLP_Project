<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "mlp.project.lollipop.common.*" %>
<%

request.setAttribute("commonURL", request.getContextPath());


String user_id= StringUtil.nullToValue(session.getAttribute("user_id"), "");
String user_mail= StringUtil.nullToValue(session.getAttribute("user_mail"), "");
String user_phone= StringUtil.nullToValue(session.getAttribute("user_phone"), "");
%>

