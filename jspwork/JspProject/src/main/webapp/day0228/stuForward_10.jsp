<%@page import="test.Student"%>
<%@page import="java.util.Vector"%>
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
   <h3 class="alert alert-info">여기는 stuForward.jsp입니다</h3>
   
   <%
      //request에 저장된 list를 얻기
      Vector<Student> list=(Vector<Student>)request.getAttribute("list");
   
     //반복문이용 출력
     for(Student dto:list)
     {%>
    	 
    	 <h3>
    	   이름: <%=dto.getName() %><br>
    	   주소: <%=dto.getAddress() %><br>
    	   점수: <%=dto.getScore() %>
    	 
    	 </h3>
     <%}
   
   %>
</body>
</html>