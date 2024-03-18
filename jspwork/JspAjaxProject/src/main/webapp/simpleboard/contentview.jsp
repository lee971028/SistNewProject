<%@page import="java.text.SimpleDateFormat"%>
<%@page import="simpleboard.model.SimpleBoardDto"%>
<%@page import="simpleboard.model.SimpleBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
  body *{
    font-family: 'Noto Serif KR';
    font-size: 11pt;
  }
  
  span.day{
    color: #ccc;
    font-size: 0.8em;
  }
  
  span.aday{
   float: right;
   font-size: 0.8em;
   color: #bbb;
  }
  
  div.alist{margin-left: 20px;}
  
  i.amod{
    margin-left: 20px;
    color: green;
  }
  
  i.adel{
    color: red;
  }

</style>

<script type="text/javascript">
  $(function(){
	  
	  list();
	  
	  //ajax insert
	  var num=$("#num").val();
	  //alert(num);
	  
	  $("#btnasend").click(function(){
		  
		  var nickname=$("#nickname").val().trim();
		  var content=$("#content").val().trim();
		  
		   if(nickname=='')
			{
			   alert("닉네임을 입력후 저장해주세요");
			   return;
			}
		   if(content=='')
			{
			   alert("댓글내용을 입력후 저장해주세요");
			   return;
			}
		  
		  $.ajax({
			  
			  type:"get",
			  url:"../simpleboardanswer/insertAnswer.jsp",
			  dataType:"html",
			  data:{"num":num,"nickname":nickname,"content":content},
			  success:function(){
				 //기존입력값 지우기
				 $("#nickname").val('');
				 $("#content").val('');
				 
				 list();
			  }
		  });
	  });
	  
	  
	  //리스트의 삭제버튼클릭시 삭제
	  $(document).on("click",".adel",function(){
		  
		  var idx=$(this).attr("idx");
		  //alert(idx);
		  var ans=confirm("댓글을 삭제하려면 [확인]을 눌러주세요");
		  
		  if(ans){
			  $.ajax({
				  type:"get",
				  url:"../simpleboardanswer/deleteAnswer.jsp",
				  dataType:"html",
				  data:{"idx":idx},
				  success:function(){
					  alert("삭제되었습니다");
					  list();
				  }
			  })
		  }
		 
	  });
	  
	  //댓글 글자 누르면 댓글창 나오게
	  $("b.acount").click(function(){
		  $("div.aupdateform").hide();
		  $("div.aform").toggle();
		  
	  });
	  
	  //일단 수정창 안보이게
	  $("div.aupdateform").hide();
	  
	 //댓글리스트의 수정아이콘 누르면 수정댓글창에 해당idx의 내용 띄우기
	 $(document).on("click",".amod",function(){
		 $("div.aform").hide();
		 $("div.aupdateform").show();
		 
		 var idx=$(this).attr("idx");
		 //alert(idx);
		 $("#idx").val(idx);
		 
		 $.ajax({
			 type:"get",
			 dataType:"json",
			 url:"../simpleboardanswer/oneDataAnswer.jsp",
			 data:{"idx":idx},
			 success:function(res){
				 
				 $("#idx").val(res.idx);
				 $("#unickname").val(res.nick);
				 $("#ucontent").val(res.content);
			 }
		 });
	 });
	 
	 
	 
	 //수정
	 $("#btnaUsend").click(function(){
		 
		 var idx=$("#idx").val();
		 var nick=$("#unickname").val();
		 var content=$("#ucontent").val();
		 
		 //alert(idx+","+nick+","+content);
		 
		 $.ajax({
			 type:"get",
			 url:"../simpleboardanswer/updateAnswer.jsp",
			 dataType:"html",
			 data:{"idx":idx,"nickname":nick,"content":content},
			 success:function(){
				 
				 list();
				 $("div.aupdateform").hide();
				 $("div.aform").show();
			 }
		 })
	 });
	  
  });
  
  
  function list()
  {
	  console.log("list num="+$("#num").val());
	  
	  $.ajax({
		  
		  type:"get",
		  url:"../simpleboardanswer/listAnswer.jsp",
		  dataType:"json",
		  data:{"num":$("#num").val()},
		  success:function(res){
			 
			  //댓글갯수출력
			  $("b.acount>span").text(res.length);
			  
			  var s="";
			  $.each(res,function(idx,item){
				  
				  s+="<div>"+item.nick+":  "+item.content;
				  s+="<span class='aday'>"+item.writeday+"</span>";
				  s+="<i class='bi bi-pencil-square amod' idx="+item.idx+"></i>";
				  s+="<i class='bi bi-trash adel'  idx="+item.idx+"></i>";
			  });
			  $("div.alist").html(s);
			  
		  }
		  
	  });
  }
</script>

</head>
<%
	String num=request.getParameter("num");
	SimpleBoardDao dao=new SimpleBoardDao();
	//dto
	SimpleBoardDto dto=dao.getContent(num);
	//조회수1증가
	dao.updateReadCount(num);
	//날짜
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");

%>

<input type="hidden" id="num" value="<%=num%>">


<div style="margin: 50px 100px; width: 500px;">
  <table class="table table-bordered">
     <caption align="top"><b style="font-size: 15pt;"><%=dto.getSubject() %></b></caption>
     <tr>
       <td>
         <b>작성자: <%=dto.getWriter() %></b><br>
         <span class="day"><%=sdf.format(dto.getWriteday()) %></span>
         &nbsp;&nbsp;&nbsp;&nbsp;조회: <%=dto.getReadcount() %>
       </td>
     </tr>
     <tr height="250">
       <td>
         <%=dto.getContent().replace("\n", "<br>") %>
       </td>
     </tr>
     
     <!-- 댓글 -->
     <tr>
       <td>
         <b class="acount">댓글<span>0</span></b>
         <div class="alist" id="alist">
             댓글목록
         </div>
           <div class="aform input-group">
            <input type="text" id="nickname" class="form-control"
            style="width: 80px;" placeholder="닉네임">
            <input type="text" id="content" class="form-control"
            style="width: 300px; margin-left: 10px;" placeholder="댓글메세지">
            
            <button type="button" id="btnasend"
            class="btn btn-info btn-sm" style="margin-left: 10px;">저장</button>
         </div>
         <!-- 수정창 -->
         <div class="aupdateform input-group">
            <input type="hidden" id="idx">
            <input type="text" id="unickname" class="form-control"
            style="width: 80px;" placeholder="닉네임">
            <input type="text" id="ucontent" class="form-control"
            style="width: 300px; margin-left: 10px;" placeholder="댓글메세지">
            
            <button type="button" id="btnaUsend"
            class="btn btn-warning btn-sm" style="margin-left: 10px;">수정</button>
         </div>
         
         
       </td>
     </tr>
     
     <tr>
       <td align="center">
         <button type="button" class="btn btn-outline-info btn-sm"
         onclick="location.href='addform.jsp'"><i class="bi bi-pencil"></i>글쓰기</button>
         <button type="button" class="btn btn-outline-success btn-sm"
         onclick="location.href='boardlist.jsp'"><i class="bi bi-list-check"></i>목록</button>
         <button type="button" class="btn btn-outline-primary btn-sm"
         onclick="location.href='updatepassform.jsp?num=<%=dto.getNum()%>'"><i class="bi bi-pencil-square"></i>수정</button>
         <button type="button" class="btn btn-outline-danger btn-sm"
         onclick="location.href='deletepassform.jsp?num=<%=dto.getNum()%>'"><i class="bi bi-trash"></i>삭제</button>
       </td>
     </tr>
  </table>
</div>
<body>

</body>
</html>