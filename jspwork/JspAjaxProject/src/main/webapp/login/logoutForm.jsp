<%@page import="log.model.LogDao"%>
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
  //세션으로부터 아이디 읽어온다
  String id=(String)session.getAttribute("idok");
  //아이디에 해당하는 이름을 dao로부터 얻어온다
  LogDao dao=new LogDao();
  String name=dao.getName(id);
%>
<br><br>
<h4 class="alert alert-warning"><%=name %>님이 로그인 하셨습니다</h4>
<input value="로그아웃" class="btn btn-danger" type="button" 
onclick="location.href='logoutAction.jsp'">
<br><br>
<img alt="" src="../image/div_img/beauty3.jpg">
</body>
</html>