<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.SmartDto"%>
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
<script type="text/javascript">
   function funcdel(num,currentPage){
	   
	   //alert(num+","+currentPage);
	   
	   var ans=confirm("삭제하려면 [확인]을 눌러주세요");
	   
	   if(ans){
		   location.href='smartboard/delete.jsp?num='+num+"&currentPage="+currentPage;
	   }
   }
</script>
</head>
<body>
  <!-- 상세페이지 적당히 만들어볼것!
   작성자,글제목,날짜,내용등등..조회수 증가도 포함
   맨아래에는 목록,글쓰기,수정,삭제 버튼 만들기 -->
   <jsp:useBean id="dao" class="data.dao.SmartDao"/>
   <%
      String num=request.getParameter("num");
      String currentPage=request.getParameter("currentPage");
      
      //조회수1증가
      dao.updateReadcount(num);
      //dto가져오기
      SmartDto dto=dao.getData(num);
      
      SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
   %>
   
   <div  style="margin: 50px 100px; width: 500px;">
      <table class="table table-bordered">
         <caption align="top"><h3><b>
             <%=dto.getSubject() %>
         </b></h3></caption>
         
         <tr>
           <td>
              <b>작성자:  <%=dto.getWriter() %></b><br>
              <span class="day"><%=sdf.format(dto.getWriteday()) %></span>
              &nbsp;&nbsp;조회  <%=dto.getReadcount() %>
           </td>
         </tr>
         
         <tr height="150">
            <td>
              <%=dto.getContent().replace("\n", "<br>") %>
            </td>
         </tr>
         <tr>
            <td style="float: right;">
              <button type="button" class="btn btn-info btn-sm" 
              onclick="location.href='index.jsp?main=smartboard/smartform.jsp'"><i class="bi bi-pencil-fill"></i>글쓰기</button>
              <button type="button" class="btn btn-success btn-sm" 
              onclick="location.href='index.jsp?main=smartboard/boardlist.jsp'"><i class="bi bi-card-list"></i>목록</button>
              <button type="button" class="btn btn-warning btn-sm" 
              onclick="location.href='index.jsp?main=smartboard/updateform.jsp?num=<%=num%>&currentPage=<%=currentPage%>'"><i class="bi bi-pencil-square"></i>수정</button>
              <button type="button" class="btn btn-danger btn-sm" 
              onclick="funcdel(<%=num%>,<%=currentPage%>)"><i class="bi bi-trash"></i>삭제</button>
            </td>
         </tr>
      </table>
   </div>
</body>
</html>