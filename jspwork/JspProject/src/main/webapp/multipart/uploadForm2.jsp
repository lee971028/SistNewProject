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
  <form action="uploadProc2.jsp" method="post" enctype="multipart/form-data">
     <table class="table table-bordered" style="width: 400px;">
        <caption align="top"><b>이미지 여러개 업로드</b></caption>
        <tr>
          <th width="100">작성자</th>
          <td>
            <input type="text" name="writer" class="form-control" style="width: 120px;">
          </td>
        </tr>
        <tr>
          <th width="100">이미지들</th>
          <td>
            <input type="file" name="photo1" class="form-control"><br>
            <input type="file" name="photo2" class="form-control"><br>
            <input type="file" name="photo3" class="form-control"><br>
          </td>
        </tr>
        
        <tr>
          <td colspan="2" align="center">
            <button type="submit" class="btn btn-info">서버에 업로드 하기</button>
          </td>
        </tr>
     </table>
  </form>
</body>
</html>