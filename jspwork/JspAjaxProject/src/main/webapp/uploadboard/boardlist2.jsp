<%@page import="java.text.SimpleDateFormat"%>
<%@page import="uploadboard.data.UploadBoardDto"%>
<%@page import="java.util.List"%>
<%@page import="uploadboard.data.UploadBoardDao"%>
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
  UploadBoardDao dao=new UploadBoardDao();
  List<UploadBoardDto> list=dao.getAllDatas();
  SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
%>
<body>
<div style="margin: 200px 100px; width: 900px;">
   <table class="table table-bordered">
      <caption align="top"><b>앨범형 목록보기</b>
         <button type="button" class="btn btn-info" onclick="location.href='addform.jsp'">글쓰기</button>
      </caption>
      
      <tr>
        <%
          for(int i=0;i<list.size();i++)
          {
        	  int no=list.size()-i;
        	  UploadBoardDto dto=list.get(i);
        	  %>
        <td> 
        	  <a href="content.jsp?num=<%=dto.getNum()%>">
        	  
        	  <img src="../save/<%=dto.getImgname()%>"
        	  style="width: 180px; height: 180px; border: 1px solid gray;margin: 5px">
        	  <br>
        	  <%=dto.getSubject() %>
        	  </a>
        	  <br>
        	  <span style="color: gray; font-size: 10pt;">
        	    조회: <%=dto.getReadcount() %>
        	    <%=sdf.format(dto.getWriteday()) %>
        	    <br>
        	    <%=dto.getWriter() %>
        	  </span>
        	  <br><br>
        </td>
        
           <%
             if((i+1)%4==0)
             {%>
            	 </tr>
            	 <tr>
             <%}
           %>
         <% }
        %>
      </tr>
   </table>
  </div>
</body>
</html>