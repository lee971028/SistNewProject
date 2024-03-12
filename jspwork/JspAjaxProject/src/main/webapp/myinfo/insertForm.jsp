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
   function goFocus(hp)
   {
	   if(hp.value.length==4)
		   frm.hp3.focus();
   }
</script>
</head>
<body>
<div style="margin: 100px 100px; width: 400px;" >
   <form action="insertAction.jsp" method="post" name="frm">
      <table class="table table-bordered">
          <caption align="top"><b>개인신상정보</b></caption>
            <tr>
              <th width="100" class="table-info">이름</th>
              <td>
                <input type="text" name="name" class="form-control"
                style="width: 120px;" required="required">
              </td>
            </tr>
            
            <tr>
              <th width="100" class="table-info">혈액형</th>
                <td>
                  <select name="blood" class="form-control" style="width: 100px;">
                    <option value="A">A형</option>
                    <option value="B">B형</option>
                    <option value="O">O형</option>
                    <option value="AB">AB형</option>
                  </select>
                </td>
            </tr>
            
            <tr>
              <th width="100" class="table-info">연락처</th>
              <td class="d-inline-flex">
                  <select name="hp1" class="form-control" style="width: 80px;">
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="017">017</option>
                    <option value="018">018</option>
                  </select>
                  <b>-</b>
                  <input type="text" name="hp2" required="required" class="form-control" style="width: 100px;"
                  onkeyup="goFocus(this)">
                  <b>-</b>
                  <input type="text" name="hp3" required="required" class="form-control" style="width: 100px;">
              </td>
            </tr>
            
            <tr>
              <th width="100" class="table-info">생년월일</th>
              <td>
                <input type="date" name="birth" required="required" class="form-control" style="width: 150px;"
                value="2000-01-01">
              </td>
            </tr>
            
            <tr>
              <td colspan="2" align="center">
                <input type="submit" value="저장" class="btn btn-outline-info">
                <input type="button" value="목록" class="btn btn-outline-success">
              </td>
            </tr>
      </table>
   </form>
</div>
</body>
</html>