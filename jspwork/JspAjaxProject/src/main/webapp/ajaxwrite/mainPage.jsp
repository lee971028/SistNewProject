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
<style type="text/css">
  div.board{
    position: absolute;
   left: 20%;
   top: 20%;
   font-family: 'Noto Sans KR';
   font-size: 1.0em;
    
  }
  
  div.list{
     
     width: 800px;
  }
  
  td.subject{
   cursor: pointer;
  }
  
 

</style>
<script type="text/javascript">
$(function(){
	$("div.addform").hide();
	$("div.updateform").hide();
	$("div.detailview").hide();
	//$("div.list").hide();
	
	list();
	
	//이미지 선택시
	$("#selimage").change(function(){
		var im=$(this).val();
		
		//이미지명을 현재값에 넣기
		$("#image").val(im);
		
		//아래 이미지뷰에 추가로 이미지가 보이게
		var s="<img src='"+im+"' width='50'>";
		$("#imgview").html(s);
	});
	
	//글쓰기 버튼 누르면 입력폼나오게
	$(document).on("click",".addbtn",function(){
		$("div.list").hide();
		$("div.addform").show();
	})
	
	
	//db추가버튼
	$("#btninsert").click(function(){
		
		/* var data=$("#addfrm").serialize();
		alert(data); */
		var writer=$("#writer").val();
		var subject=$("#subject").val();
		var story=$("#story").val();
		var image=$("#image").val();
		alert(image);
		
		$.ajax({
			type:"post",
			dataType:"html",
			url:"insertWrite.jsp",
			data:{"writer":writer,"subject":subject,"story":story,"image":image},
			success:function(){
				
				list();
				
				$("#writer").val("");
				$("#subject").val("");
				$("#story").val("");
				$("#image").val("");
				
				$("#imgview").empty();
				
				$("div.addform").hide();
				$("div.list").show();
			}
		})
	})
	
	//제목클릭시 이벤트
	$(document).on("click","td.subject",function(){
		var num=$(this).attr("num");
		//alert(num);
		
		$.ajax({
			type:"get",
			dataType:"json",
			url:"getDataWrite.jsp",
			data:{"num":num},
			success:function(data){
				
				$("span.title").html(data.subject);
				$("span.day").html(data.writeday);
				$("span.writer").html(data.writer);
				$("div.story").html("<pre>"+data.story+"</pre>");
				$("div.image").html("<img src='"+data.image+"'>");
				
				//목록안보이게
				$("div.list").hide();
				$("div.detailview").show();
			}
		})
	})
	
})

function list()
{
	$.ajax({
		type:"get",
		dataType:"json",
		url:"listWrite.jsp",
		success:function(res){
			
			//alert(res.length);
			
			var s="";
			
			s+="<table class='board table table-bordered'>";
			s+="<caption align='top'><button type='button' class='btn btn-info addbtn'>";
			s+="<i class='bi bi-pencil'></i>글쓰기</button></caption>";
			s+="<tr class='table-light'>";
			s+="<td width='100' >번호</td>";
			s+="<td width='300'>제목</td>";
			s+="<td width='150'>작성자</td>";
			s+="<td width='200'>작성일</td>";
			s+="<td width='100'>추천</td>";
			s+="</tr>";
			
			var n=res.length;
			if(n==0){
				s+="<tr>";
				s+="<td colspan='5' align='center'>";
				s+="<b>게시된 글이 없습니다</b></td></tr>";
			}else{
				
				$.each(res,function(i,elt){
					//출력
					s+="<tr>";
					s+="<td align='center'>"+(i+1)+"</td>";
					s+="<td num="+elt.num+" class='subject'>"+elt.subject+"</td>";
					s+="<td align='center'>"+elt.writer+"</td>";
					s+="<td align='center'>"+elt.writeday+"</td>";
					s+="<td align='center'>"+elt.likes+"</td>";
					s+="</tr>";
				})
			}
			s+="</table>";
			
			$("div.list").html(s);
		}
	})
	
}

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
             class="form-control"  style="width: 130px;">
           </td>
         </tr>
         
         <tr>
           <th width="100" class="table-warning">제목</th>
           <td>
             <input type="text" name="subject" id="subject"
             class="form-control"  style="width: 250px;">
           </td>
         </tr>
         
         <tr>
           <th width="100" class="table-warning">내용</th>
           <td>
             <textarea style="width: 300px; height: 100px;"
             name="story" id="story" 
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
             <button type="button" class="btn btn-danger" id="btninsert">DB추가</button>
           </td>
         </tr>
       </table>
     </form>
  </div>
  <div class="board updateform">수정폼</div>
  <div class="board list">목록</div>
  <div class="board detailview">
     <table class="story table table-bordered" style="width: 600px;">
        <caption align="top"><b>게시글 확인</b></caption>
        <tr>
	        <td>
	          <span class="title">제목</span>
	          <span class="day">날짜</span>
	        </td>
        </tr>
        <tr>
	        <td>
	          <span class="writer">작성자</span>
	          <span class="likes">
	          		<i class="bi bi-balloon-heart-fill" style="color: red;"></i>
	              	<span class="su">0</span>
	          </span>
	        </td>
        </tr>
        
        <tr>
	        <td style="height: 200px;" valign="top">
	          <div class="story">내용</div>
	          <div class="image">이미지</div>
	        </td>
        </tr>
        
        <tr>
          <td>
            <button type="button" class="btn btn-outline-info btn-sm"
            onclick="location.href='mainPage.jsp'">목록</button>
            <button type="button" class="addbtn btn btn-outline-info btn-sm"
            >글쓰기</button>
            <button type="button" class="updatebtn btn btn-outline-info btn-sm"
            >수정</button>
            <button type="button" class="deletebtn btn btn-outline-info btn-sm"
            >삭제</button>
          </td>
        </tr>
     </table>
  </div>
  
</body>
</html>