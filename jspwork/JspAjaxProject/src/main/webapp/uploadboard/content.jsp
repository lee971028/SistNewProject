<%@page import="java.text.SimpleDateFormat"%>
<%@page import="uploadboard.data.UploadBoardDto"%>
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
 String num=request.getParameter("num");
 UploadBoardDao dao=new UploadBoardDao();
 //데이타가져오기
 UploadBoardDto dto=dao.getData(num);
 //조회수증가
 dao.updateReadCount(num);
 
 //출력날짜형식
 SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<body>
<div style="margin: 100px 100px;">
<table class="table table-condensed" style="width:650px;">
  <tr>
    <td style="width: 500px;">
       <h4><%=dto.getSubject() %></h4>
       <span style="color: gray; font-size: 10pt;">
      <%=dto.getWriter() %>
      </span>
    </td>
    <td style="color: gray; font-size: 9pt;">
    <%=sdf.format(dto.getWriteday()) %>
    </td>
  </tr>
  <tr>
    <td colspan="2">
     
      <%=dto.getContent().replace("\n", "<br>") %>
      
      <br><br>
      <a  href="../save/<%=dto.getImgname()%>">
      <img alt="" src="../save/<%=dto.getImgname()%>" style="max-width: 200px;"></a>
      
      <br><br>
      <b style="color: gray; font-size: 10pt;">조회: <%=dto.getReadcount() %></b>
    </td>
  </tr>
</table>
	<div style="margin-left: 400px;">
	  <button type="button" class="btn btn-outline-info" 
	  onclick="location.href='addform.jsp'">글쓰기</button>
	  <button type="button" class="btn btn-outline-success" 
	  onclick="location.href='boardlist.jsp'">목록</button>
	  <button type="button" class="btn btn-outline-warning" 
	  onclick="location.href='updateform.jsp?num=<%=dto.getNum()%>'">수정</button>
	  <button type="button" class="btn btn-outline-danger" 
	  onclick="location.href='deleteform.jsp?num=<%=dto.getNum()%>'">삭제</button>
	</div>
</div>
</body>
</html>