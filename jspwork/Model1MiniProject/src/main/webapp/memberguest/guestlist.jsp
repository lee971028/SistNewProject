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
   //로그인상태확인
   String loginok=(String)session.getAttribute("loginok");

%>

<%
  if(loginok!=null){
	  %>
	  <jsp:include page="guestform.jsp"/>
	  <hr width="700" align="left" style="margin-left: 100px;">
  <%}
%>
<div style="margin: 50px 100px;">
<b>방명록 리스트 출력될곳...</b>
</div>
</body>
</html>