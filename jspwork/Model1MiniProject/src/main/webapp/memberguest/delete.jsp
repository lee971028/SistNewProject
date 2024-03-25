<%@page import="java.io.File"%>
<%@page import="data.dao.GuestDao"%>
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
	//db삭제뿐아니라 업로드된 파일도 삭제해보기
	String num=request.getParameter("num");
    String currentPage=request.getParameter("currentPage");
    
    //db로부터 저장된 이미지명 얻기
    GuestDao dao=new GuestDao();
    String photoname=dao.getData(num).getPhotoname();
    
    //db삭제
    dao.deleteGuest(num);
    
    //파일삭제
  //프로젝트 실제경로
  String realPath=getServletContext().getRealPath("/save");
    
    //파일객체생성
    File file=new File(realPath+"/"+photoname);
    
    //파일삭제
    if(file.exists())
    	file.delete();
    
    //보던페이지
    String go="../index.jsp?main=memberguest/guestlist.jsp?currentPage="+currentPage;
    response.sendRedirect(go);
%>
</body>
</html>