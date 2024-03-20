<%@page import="org.json.simple.JSONObject"%>
<%@page import="data.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String id=request.getParameter("id");
  MemberDao dao=new MemberDao();
  int count=dao.isIdCheck(id);
  
  JSONObject ob=new JSONObject();
  ob.put("count", count);
%>
<%=ob.toString()%>