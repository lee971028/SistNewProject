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
<%
  String num=request.getParameter("num");
  String pass=request.getParameter("pass");
  
//dao 선언
  MemberDao dao=new MemberDao();
  
//비번체크후 맞을경우 삭제, 틀릴경우 경고후 이전페이지로 가기
  boolean b=dao.isEqualPass(num, pass);
  
  if(b){
	  dao.deleteMember(num);
	  %>
	  <script type="text/javascript">
	   alert("회원탈퇴성공!!!");
	   location.href="../index.jsp";
	  </script>
  <%}else{%>
	  
	  <script type="text/javascript">
	    alert("비밀번호가 맞지않습니다");
	    history.back();
	  </script>
  <%}
%>
</body>
</html>