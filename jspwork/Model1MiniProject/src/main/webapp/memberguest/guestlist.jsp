<%@page import="data.dao.MemberDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.GuestDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.GuestDao"%>
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

  span.day{
     float: right;
     font-size: 10pt;
     color: gray;
  }
</style>
</head>
<body>
<%
   //로그인상태확인
   String loginok=(String)session.getAttribute("loginok");

	GuestDao dao=new GuestDao();
	
	//전체갯수
	int totalCount=dao.getTotalCount();
	int perPage=3; //한페이지당 보여질 글의 갯수
	int perBlock=5; //한블럭당 보여질 페이지 갯수
	int startNum; //db에서 가져올 글의 시작번호(mysql은 첫글이0번,오라클은 1번);
	int startPage; //각블럭당 보여질 시작페이지
	int endPage; //각블럭당 보여질 끝페이지
	int currentPage;  //현재페이지
	int totalPage; //총페이지수
	int no; //각페이지당 출력할 시작번호
	
	//현재페이지 읽는데 단 null일경우는 1페이지로 준다
	if(request.getParameter("currentPage")==null)
		currentPage=1;
	else
		currentPage=Integer.parseInt(request.getParameter("currentPage"));
	
	//총페이지수 구한다
	//총글갯수/한페이지당보여질갯수로 나눔(7/5=1)
	//나머지가 1이라도 있으면 무조건 1페이지 추가(1+1=2페이지가 필요)
	totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);
	
	//각블럭당 보여질 시작페이지
	//perBlock=5일경우 현재페이지가 1~5일경우 시작페이지가1,끝페이지가 5
	//현재가 13일경우 시작:11 끝:15
	startPage=(currentPage-1)/perBlock*perBlock+1;
	endPage=startPage+perBlock-1;
	
	//총페이지가 23일경우 마지막블럭은 끝페이지가 25가 아니라 23
	if(endPage>totalPage)
		endPage=totalPage;
	
	//각페이지에서 보여질 시작번호
	//1페이지:0, 2페이지:5 3페이지: 10.....
	startNum=(currentPage-1)*perPage;
	
	//각페이지당 출력할 시작번호 구하기
	//총글개수가 23  , 1페이지:23 2페이지:18  3페이지:13
	no=totalCount-(currentPage-1)*perPage;
	
	//페이지에서 보여질 글만 가져오기
	List<GuestDto>list=dao.getList(startNum, perPage);
	
	
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
%>

<%
  if(loginok!=null){
	  %>
	  <jsp:include page="guestform.jsp"/>
	  <hr width="700" align="left" style="margin-left: 100px;">
  <%}
%>
<div style="margin: 50px 100px;">
<b>총 <%=totalCount %>개의 방명록 글이 있습니다</b>

  <%
    MemberDao mdao=new MemberDao();
    for(GuestDto dto:list)
    {
    	//이름얻기
    	String name=mdao.getName(dto.getMyid());
    	%>
    	
    	<table  class="table" style="width: 580px;">
    	  <tr>
    	    <td>
    	    <b><i class="bi bi-person-circle"></i>&nbsp;<%=name %>(<%=dto.getMyid() %>)</b>
    	    
    	    <%
    	      String myid=(String)session.getAttribute("myid");
    	    
    	      //로그인한 아이디와 글을쓴아이디가 같을경우에만 수정,삭제 보이게한다
    	      if(loginok!=null && dto.getMyid().equals(myid)){
    	    	  %>
    	    	 <span style="margin-left: 280px;">
    	    	  <i class="bi bi-pencil-square"></i>
    	    	  <i class="bi bi-trash"></i></span> 
    	      <%}
    	    %>
    	    
    	    <span class="day"><%=sdf.format(dto.getWriteday()) %></span>
    	    </td>
    	  </tr>
    	  
    	  <tr height="120">
    	    <td>
    	       <!-- 이미지가 null이아닌경우만 출력 -->
    	       <%
    	       if(dto.getPhotoname()!=null){%>
    	    	   
    	    	   <a href="save/<%=dto.getPhotoname()%>" target="_blank">
    	    	      <img alt="" src="save/<%=dto.getPhotoname()%>" align="left"
    	    	      style="width: 100px; " hspace="20">
    	    	   </a>
    	       <%}
    	       %>
    	       
    	       <%=dto.getContent().replace("\n", "<br>")%>
    	    </td>
    	  </tr>
    	</table>
    <%}
  %>
  </div>
  
  
  <div style="width: 580px; text-align: center;">
  
  <!-- 페이지 번호 출력 -->
  <ul class="pagination justify-content-center">
  <%
  //이전
  if(startPage>1)
  {%>
	  <li class="page-item ">
	   <a class="page-link" href="index.jsp?main=memberguest/guestlist.jsp?currentPage=<%=startPage-1%>" style="color: black;">이전</a>
	  </li>
  <%}
    for(int pp=startPage;pp<=endPage;pp++)
    {
    	if(pp==currentPage)
    	{%>
    		<li class="page-item active">
    		<a class="page-link" href="index.jsp?main=memberguest/guestlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
    		</li>
    	<%}else
    	{%>
    		<li class="page-item">
    		<a class="page-link" href="index.jsp?main=memberguest/guestlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
    		</li>
    	<%}
    }
    
    //다음
    if(endPage<totalPage)
    {%>
    	<li class="page-item">
    		<a  class="page-link" href="index.jsp?main=memberguest/guestlist.jsp?currentPage=<%=endPage+1%>"
    		style="color: black;">다음</a>
    	</li>
    <%}
  %>
  
  </ul>
 
  
</div>
</body>
</html>