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
<%
  //프로젝트 경로
  String root=request.getContextPath();
%>
<body>
  <a href="<%=root%>/">메인</a>&nbsp;&nbsp;&nbsp;
  <a href="<%=root%>/">로그인</a>&nbsp;&nbsp;&nbsp;
  <a href="<%=root%>/">회원가입</a>&nbsp;&nbsp;&nbsp;
  <a href="<%=root%>/">Q & A</a>&nbsp;&nbsp;&nbsp;
  <a href="<%=root%>/">방명록</a>&nbsp;&nbsp;&nbsp;
  <a href="<%=root%>/">상품등록게시판</a>&nbsp;&nbsp;&nbsp;
  <a href="<%=root%>/">이미지게시판</a>&nbsp;&nbsp;&nbsp;
</body>
</html>