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
<style type="text/css">
  div.board{
    position: absolute;
   left: 20%;
   top: 20%;
   font-family: 'Noto Sans KR';
   font-size: 1.1em;
    
  }
  
  div.list{
     
     width: 800px;
  }

</style>
<script type="text/javascript">
$(function(){
	
	$("div.updateform").hide();
	$("div.detailview").hide();
	$("div.list").hide();
	
	
	
	//이미지 선택시
	$("#selimage").change(function(){
		var im=$(this).val();
		
		//이미지명을 현재값에 추가로 더하기
		var data=$("#image").val();
		$("#image").val(data+im);
		
		//아래 이미지뷰에 추가로 이미지가 보이게
		var s="<img src='"+im+"' width='50'>";
		$("#imgview").html(s);
	})
	
	
	
})

</script>
</head>
<body>
  <!-- 추가폼 -->
  <div class="board addform" style=" width: 400px;">
     <form id="addfrm">
       <table class="table table-bordered">
         <caption align="top"><b>글쓰기</b></caption>
         <tr>
           <th width="100" class="table-warning">작성자</th>
           <td>
             <input type="text" name="writer" id="writer"
             class="form-control" required="required" style="width: 130px;">
           </td>
         </tr>
         
         <tr>
           <th width="100" class="table-warning">제목</th>
           <td>
             <input type="text" name="subject" id="subject"
             class="form-control" required="required" style="width: 250px;">
           </td>
         </tr>
         
         <tr>
           <th width="100" class="table-warning">내용</th>
           <td>
             <textarea style="width: 300px; height: 100px;"
             name="story" id="story" required="required"
             class="form-control"></textarea>
           </td>
         </tr>
         
         <tr>
           <th width="100" class="table-warning">이미지</th>
           <td>
             <input type="hidden" name="image" id="image" width="100%">
             <select id="selimage" style="width: 100px;" class="form-control">
                <option value="../image/avata/b1.png">사랑해</option>
                <option value="../image/avata/b2.png">우울함</option>
                <option value="../image/avata/b5.png">배고파</option>
                <option value="../image/avata/b6.png">좌절</option>
                <option value="../image/avata/b10.png">심심해</option>
                <option value="../image/avata/b8.png">최고</option>
             </select><br>
             <div id="imgview"></div>
           </td>
         </tr>
         <tr>
           <td colspan="2" align="center">
             <button type="submit" class="btn btn-danger" id="btninsert">DB추가</button>
           </td>
         </tr>
       </table>
     </form>
  </div>
  <div class="board updateform">수정폼</div>
  <div class="board list">목록</div>
  <div class="board detailview">내용보기</div>
  
</body>
</html>