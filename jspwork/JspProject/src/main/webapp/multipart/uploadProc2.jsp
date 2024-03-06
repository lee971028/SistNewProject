<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
  //톰캣에 업로드된 프로젝트 경로 구하기
  ServletContext context=getServletContext();

//프로젝트의 upload된 실제경로
  String realFolder=context.getRealPath("/upload");

  System.out.println(realFolder);
  
  MultipartRequest multi=null;
  
  //업로드시 허용할 크기
  int uploadSize=1024*1024*3; //3mb
  
  try{
  multi=new MultipartRequest(request,realFolder,uploadSize,"utf-8",
		  new DefaultFileRenamePolicy());
  
     //입력한 값들 읽어오기
     String writer=multi.getParameter("writer");
     
     //파일이 여러개인경우
     Enumeration forNames=multi.getFileNames();  //file타입만 얻어옴
  
     while(forNames.hasMoreElements())
     {
    	 //파일태그 name얻기
    	 String fileName=(String)forNames.nextElement();
    	 System.out.println("file type 의 이름: "+fileName); 
    	 
    	 //실제업로드된 파일명
    	 String uploadFileName=multi.getFilesystemName(fileName);
    	 
    	 if(uploadFileName!=null){%>
    		 
    		 <img alt="" src="../upload/<%=uploadFileName%>" style="max-width: 200px;" border="1">
    		 <br>
    		 <b><%=uploadFileName %></b>
    		 
    		 <h3>작성자: <%=writer %></h3>
    	 <%}
     }
  
  
  }catch(Exception e){
	  
  }

%>
</body>
</html>