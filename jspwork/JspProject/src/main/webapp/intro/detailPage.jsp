<%@page import="intro.model.IntroDto"%>
<%@page import="intro.model.IntroDao"%>
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
<script type="text/javascript">
   function funcdel(num){
	   var yes=confirm("정말 삭제하시겠습니가?");
	   if(yes){
		   location.href="deleteIntro.jsp?num="+num;
	   }
   }
</script>
</head>
<body>
<%
  String num=request.getParameter("num");
  IntroDao dao=new IntroDao();
  IntroDto dto=dao.getOneData(num);
%>

<div style="margin: 50px 100px;">
   <table class="table table-bordered" style="width: 600px;">
      <caption align="top"><b><%=dto.getName() %>님의 자기소개</b></caption>
      <tr>
        <th>이름</th>
        <td><%=dto.getName() %></td>
      </tr>
      <tr>
        <th>나이</th>
        <td><%=dto.getAge() %></td>
      </tr>
      <tr>
        <th>생년월일</th>
        <td><%=dto.getBirthday() %></td>
      </tr>
      <tr>
        <th>거주지역</th>
        <td><%=dto.getHometown() %></td>
      </tr>
      <tr>
        <th>취미</th>
        <td><%=dto.getHobby().equals("no")?"취미가 없습니다":dto.getHobby() %></td>
      </tr>
      <tr>
        <th>더하고싶은말</th>
        <td><%=dto.getMemo() %></td>
      </tr>
      
      <tr>
        <td colspan="2" align="center">
           <button type="button" class="btn btn-info" 
           onclick="location.href='updateForm.jsp?num=<%=dto.getNum()%>'">수정</button>
           <button type="button" class="btn btn-danger" 
           onclick="funcdel('<%=dto.getNum()%>')">삭제</button>
           <button type="button" class="btn btn-primary" onclick="location.href='introList.jsp'">목록</button>
        </td>
      </tr>
      
   </table>
</div>
</body>
</html>