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
  function openId(){
	  window.open("idSearch.jsp","idcheck","left='100px',top='100px',width='400px',height='200px'")
  }

</script>
</head>
<body>
<div style="margin: 50px 100px; width: 500px;">
	<form action="addMember.jsp" method="post" enctype="multipart/form-data">
  		<table class="table table-bordered">
  			<caption align="top"><b>회원가입</b></caption>
  			<tr>
  			  <td width="120" class="table-primary">아이디</td>
  			  <td >
  			    <div class="d-inline-flex">
	  			    <input type="text" class="form-control" style="width: 120px;"
	  			    name="m_id" required="required" readonly="readonly">
	  			    <button type="button" class="btn btn-danger btn-sm" 
	  			    style="margin-left: 20px;" onclick="openId()">아이디 입력</button>
  			    </div>
  			  </td>
  			</tr>
  			
  			<tr>
  			  <td width="120" class="table-primary">비밀번호</td>
  			  <td>
  			    <input type="password" class="form-control"
  			    style="width: 120px;" name="m_pass" required="required">
  			  </td>
  			</tr>
  			
  			<tr>
  			  <td width="120" class="table-primary">회원명</td>
  			  <td>
  			    <input type="text" class="form-control"
  			    style="width: 120px;" name="m_name" required="required">
  			  </td>
  			</tr>
  			
  			<tr>
  			  <td width="120" class="table-primary">사진</td>
  			  <td>
  			    <input type="file" class="form-control"
  			    style="width: 200px;" name="m_photo" required="required">
  			  </td>
  			</tr>
  			
  			<tr>
  			  <td width="120" class="table-primary">핸드폰</td>
  			  <td>
  			    <input type="text" class="form-control"
  			    style="width: 180px;" name="m_hp" required="required">
  			  </td>
  			</tr>
  			
  			<tr>
  			  <td colspan="2" align="center">
  			    <button type="submit" class="btn btn-info">회원가입신청</button>
  			  </td>
  			</tr>
  			
  		</table>
    </form>
</div>
  
</body>
</html>