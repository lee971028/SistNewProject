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
  	request.setCharacterEncoding("utf-8");
    
    String grade=request.getParameter("grade");
    String [] lang=request.getParameterValues("lang");
    String like=request.getParameter("like");
    String height=request.getParameter("height");
    String weight=request.getParameter("weight");
    String ipsaday=request.getParameter("ipsaday");
  %>
  
  <h3 class="alert alert-success"><b>***사원정보***</b><br><br>
  최종학력:  <b><%=grade %></b><br>
  가능한 컴퓨터언어:<br>
  <%
    if(lang==null)
    {%>
    	<font color="green">아무언어도 못합니다<br></font>
    <%}else
    {
    	for(int i=0;i<lang.length;i++)
    	{%>
    		&nbsp;&nbsp;<b><%=lang[i] %></b><br>
    	<%}
    }
  %>
  
  우리반 같은조하고싶은 사람: <b><%=like %></b><br>
  신장: <b><%=height %>Cm</b><br>
  몸무게: <b><%=weight %>Kg</b><br>
  입사일자: <b><%=ipsaday %></b><br>
  
  </h3>
  
</body>
</html>