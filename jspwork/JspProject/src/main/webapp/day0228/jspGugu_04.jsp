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
 <table class="table table-bordered" style="width: 1000px;">
     <tr>
        <td colspan="8" align="center">
            <b>전체 구구단</b>
        </td>
     </tr>
     
     <tr class="table-info">
        <%
          for(int dan=2;dan<=9;dan++)
          {%>
        	  <td align="center"><b><%=dan %>단</b></td>
          <%}
        %>
     </tr>
     
     <%
      for(int i=1;i<=9;i++)
      {%>
    	  <tr>
    	  <%
    	  for(int dan=2;dan<=9;dan++)
    	  {%>
    		  <td align="center">
    		     <%=dan %>X<%=i %>=<%=dan*i %>
    		  </td>
    	  <%}
    	  %>
    	    
    	  </tr>
    	  
      <%}
     %>
     
     
     
 </table>
</body>
</html>