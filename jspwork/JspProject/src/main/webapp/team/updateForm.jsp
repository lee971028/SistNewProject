<%@page import="team.model.TeamDto"%>
<%@page import="team.model.TeamDao"%>
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
	TeamDao dao=new TeamDao();
	TeamDto dto=dao.getOneData(num);
%>
<body>
<div style="margin: 30px 50px;">
  <form action="updateAction.jsp" method="post">
  
  <input type="hidden" name="num" value="<%=num%>">
     <table class="table table-bordered" style="width: 300px;">
         <caption align="top"><b>팀회원 정보 수정</b></caption>
         <tr>
           <th class="table-primary">이름</th>
             <td>
              <input type="text" name="name" class="form-control" value="<%=dto.getName()%>">
             </td>
         </tr>
         
         <tr>
           <th class="table-primary">운전면허</th>
             <td>
              <input type="checkbox" name="driver" <%=dto.getDriver().equals("있음")?"checked":"" %>>운전면허
             </td>
         </tr>
         
         <tr>
           <th class="table-primary">주소</th>
             <td>
              <input type="text" name="addr" class="form-control" value="<%=dto.getAddr()%>">
             </td>
         </tr>
         
         <tr>
           <td colspan="2" align="center">
             <button type="submit" class="btn btn-warning">팀회원정보수정</button>
           </td>
         </tr>
     </table>
  </form>
</div>
</body>
</html>