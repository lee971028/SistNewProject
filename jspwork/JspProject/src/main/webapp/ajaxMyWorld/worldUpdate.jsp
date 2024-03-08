<%@page import="myworld.model.WorldDao"%>
<%@page import="myworld.model.WorldDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  //한글엔코딩
  request.setCharacterEncoding("utf-8");
  //num,writer,content,avata
  String num=request.getParameter("unum");
  String writer=request.getParameter("uwriter");
  String content=request.getParameter("ucontent");
  String avata=request.getParameter("uavata");
  
  //dto담기
  WorldDto dto=new WorldDto();
  dto.setNum(num);
  dto.setWriter(writer);
  dto.setContent(content);
  dto.setAvata(avata);
  
  //dao선언
  WorldDao dao=new WorldDao();
  
  //수정메서드 호출
  dao.updateWorld(dto);
  
  %>