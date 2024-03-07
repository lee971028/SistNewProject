<%@page import="myworld.model.WorldDto"%>
<%@page import="myworld.model.WorldDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
  WorldDao dao=new WorldDao();
  
  request.setCharacterEncoding("utf-8");
  
  //데이타 읽기(writer,content,avata)
  String writer=request.getParameter("writer");
  String content=request.getParameter("content");
  String avata=request.getParameter("avata");
  
  WorldDto dto=new WorldDto();
  dto.setWriter(writer);
  dto.setContent(content);
  dto.setAvata(avata);
  
  dao.insertWorld(dto);
%>
</body>
</html>