<%@page import="ajaxwrite.model.AjaxWriteDto"%>
<%@page import="ajaxwrite.model.AjaxWriteDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   request.setCharacterEncoding("utf-8");
   String writer=request.getParameter("writer");
   String subject=request.getParameter("subject");
   String story=request.getParameter("story");
   String image=request.getParameter("image");
   
   
   AjaxWriteDto dto=new AjaxWriteDto();
   dto.setWriter(writer);
   dto.setSubject(subject);
   dto.setStory(story);
   dto.setImage(image);
   
   AjaxWriteDao dao=new AjaxWriteDao();
   dao.insertWrite(dto);
%>