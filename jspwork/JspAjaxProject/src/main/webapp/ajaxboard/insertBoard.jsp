<%@page import="ajaxboard.AjaxBoardDao"%>
<%@page import="ajaxboard.AjaxBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  //post방식
  request.setCharacterEncoding("utf-8");
  
  String writer=request.getParameter("writer");
  String subject=request.getParameter("subject");
  String content=request.getParameter("content");
  String avata=request.getParameter("avata");
  
  //dto
  AjaxBoardDto dto=new AjaxBoardDto();
  dto.setWriter(writer);
  dto.setSubject(subject);
  dto.setContent(content);
  dto.setAvata(avata);
  
  //dao
  AjaxBoardDao dao=new AjaxBoardDao();
  //insert
  dao.insertBoard(dto);
%>