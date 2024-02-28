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
<h3>request에 Vector 저장후 불러오는 연습</h3>
	
	<%
	    Vector<Student> list=new Vector<>();
	    list.add(new Student("이미영","강남구",88));
	    list.add(new Student("이영자","서초구",99));
	    list.add(new Student("김미영","영등포구",87));
	    list.add(new Student("이소라","부산시",77));
	    list.add(new Student("배윤영","제주 애월",66));
	    
	    //데이타 vector를 request에저장
	    request.setAttribute("list", list);
	    
	    //페이지이동2:  forward(url주소안바뀜)  redirect(url주소바뀜)
	    //<jsp:> 태그이동
	    response.sendRedirect("stuRedirect_10.jsp");
	%>
	
	
</body>
</html>