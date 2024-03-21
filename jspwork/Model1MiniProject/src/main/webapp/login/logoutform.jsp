<%@page import="data.dao.MemberDao"%>
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
<div style="margin: 100 200px;">
   <img alt="" src="image/K-060.png">
   
   <%
   String myid=(String)session.getAttribute("myid");
   MemberDao dao=new MemberDao();
   String name=dao.getName(myid);
   
   %>
   
   <br><br>
   
   <b><%=name %>님 로그인중</b><br><br>
   <button type="button" class="btn btn-danger"
   onclick="location.href='login/logoutaction.jsp'">로그아웃</button>
</div>
</body>
</html>