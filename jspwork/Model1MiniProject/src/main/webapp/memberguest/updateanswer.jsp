<%@page import="data.dao.AnswerGuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
  String idx=request.getParameter("idx");
  String content=request.getParameter("content");
  
  AnswerGuestDao dao=new AnswerGuestDao();
  dao.updateAnswer(idx, content);
%>