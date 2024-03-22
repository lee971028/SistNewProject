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
%>

<div  style="margin: 100px 200px;">
   <form action="member/updatepassaction.jsp" method="post">
       <input type="hidden" name="num" value="<%=num%>">
       <b>수정시 필요한 비밀번호를 입력해주세요</b>
       <br><br>
       <div class="d-inline-flex">
           <input type="password" name="pass" class="form-control"
           style="width: 150px;" required="required">
           <button type="submit" class="btn btn-info" style="margin-left: 10px;">확인</button>
       </div>
   </form>
</div>
</body>
</html>