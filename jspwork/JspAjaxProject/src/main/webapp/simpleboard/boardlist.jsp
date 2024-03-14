<%@page import="java.text.SimpleDateFormat"%>
<%@page import="simpleboard.model.SimpleBoardDto"%>
<%@page import="java.util.List"%>
<%@page import="simpleboard.model.SimpleBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
  a:link ,a:visited{
	 text-decoration: none;
	 color: black;
}

a:hover {
	text-decoration: underline;
	color: gray;
}

body *{
   font-family: 'Noto Serif KR';
   font-size: 11pt;
}
</style>
</head>
<%
SimpleBoardDao dao=new SimpleBoardDao();
List<SimpleBoardDto>list=dao.getAllDatas();
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
int count=list.size();
%>
<body>
<div style="margin: 50px 100px; width: 800px;">
  <button type="button" class="btn btn-outline-info" onclick="location.href='addform.jsp'"
  style="margin-left: 650px;">
  <i class="bi bi-pencil"></i>글쓰기</button>
  <br>
  <h6><b>총<%=count %>개의 글이 있습니다</b></h6>
  <table class="table table-bordered">
    <caption align="top"><b>간단목록게시판</b></caption>
    <tr class="table-light">
      <th width="80">번호</th>
      <th width="350">제목</th>
      <th width="180">작성자</th>
      <th width="180">작성일</th>
      <th width="100">조회</th>
    </tr>
    
    <%
      if(count==0)
      {%>
    	  <tr>
    	    <td colspan="5" align="center">
    	      <h6><b>등록된 게시글이 없습니다</b></h6>
    	    </td>
    	  </tr>
      <%}else{
    	  for(int i=0;i<list.size();i++)
    	  {
    		  SimpleBoardDto dto=list.get(i);
    		  %>
    		  
    		  <tr>
    		    <td align="center"><%=count-i %></td>
    		    <td>
    		      <a href="contentview.jsp?num=<%=dto.getNum()%>">
    		       <%=dto.getSubject() %>
    		      </a>
    		    </td>
    		    <td align="center"><%=dto.getWriter() %></td>
    		    <td align="center"><%=sdf.format(dto.getWriteday()) %></td>
    		    <td align="center"><%=dto.getReadcount() %></td>
    		  </tr>
    	  <%}
      }
    %>
  </table>
</div>

</body>
</html>