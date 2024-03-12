<%@page import="ajaxboard.AjaxBoardDto"%>
<%@page import="ajaxboard.AjaxBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");

  String num=request.getParameter("unum");
  String writer=request.getParameter("uwriter");
  String subject=request.getParameter("usubject");
  String content=request.getParameter("ucontent");
  String avata=request.getParameter("uavata");
  
  
  
  //dto
  AjaxBoardDto dto=new AjaxBoardDto();
  dto.setNum(num);
  dto.setWriter(writer);
  dto.setContent(content);
  dto.setSubject(subject);
  dto.setAvata(avata);
  //dao
   AjaxBoardDao dao=new AjaxBoardDao();
  dao.updateBoard(dto);
  
%>