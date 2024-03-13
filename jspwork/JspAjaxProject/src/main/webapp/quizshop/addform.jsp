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

  $(function(){
	  
	  //포토 이미지 선택시 옆에 이미지 나오게
	  $("#photo").change(function(){
		  
		  var s="../image/쇼핑몰사진/"+$(this).val()+".jpg";
		  
		  $("#myphoto").attr("src",s);
	  })
  })
</script>
</head>
<body>
<div style="margin: 50px 100px; width: 400px;">
   <form action="">
      <table class="table table-bordered">
         <caption align="top"><b>상품등록</b></caption>
           <tr>
             <th class="table-success" width="100">상품명</th>
             <td>
               <input type="text" name="sang_name" required="required"
               class="form-control" style="width: 120px;">
             </td>
           </tr>
           <tr>
             <th class="table-success" width="100">상품이미지</th>
             <td >
             <div class="d-inline-flex">
               <select name="photo" id="photo" class="form-control" style="width: 150px;">
                  <option value="1">판쵸외투</option>
                  <option value="2">가디건</option>
                  <option value="25">원피스</option>
                  <option value="34">반바지</option>
                  <option value="16">스웨이드단화</option>
                  <option value="24">이지팬츠</option>
               </select>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <img src="" width="30" id="myphoto">
              </div>
             </td>
           </tr>
           <tr>
             <th class="table-success" width="100">가격</th>
             <td>
               <input type="text" name="price" required="required"
               class="form-control" style="width: 150px;">
             </td>
           </tr>
           
           <tr>
             <th class="table-success" width="100">입고일</th>
             <td>
               <input type="date" name="ipgoday" 
               class="form-control" style="width: 150px;" value="2024-03-10"> 
             </td>
           </tr>
           
           <tr>
             <td colspan="2" align="center">
               <button type="submit" class="btn btn-outline-info">상품등록</button>
               <button type="button" class="btn btn-outline-success"
               onclick="">상품목록</button>
             </td>
           </tr>
      </table>
   </form>
</div>
</body>
</html>