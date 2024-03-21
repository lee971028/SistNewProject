<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
  //프로젝트 경로
  String root=request.getContextPath();
%>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=root %>/menu/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="<%=root %>/menu/css/menu.css">

<script type="text/javascript" src="<%=root %>/menu/js/jquery.js"></script>
<script type="text/javascript" src="<%=root %>/menu/js/function.js"></script>

<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>

<body>
	<%-- <a href="<%=root%>/">메인</a>&nbsp;&nbsp;&nbsp;
  <a href="<%=root%>/">로그인</a>&nbsp;&nbsp;&nbsp;
  <a href="index.jsp?main=member/addform.jsp">회원가입</a>&nbsp;&nbsp;&nbsp;
  <a href="<%=root%>/">Q & A</a>&nbsp;&nbsp;&nbsp;
  <a href="<%=root%>/">방명록</a>&nbsp;&nbsp;&nbsp;
  <a href="<%=root%>/">상품등록게시판</a>&nbsp;&nbsp;&nbsp;
  <a href="<%=root%>/">이미지게시판</a>&nbsp;&nbsp;&nbsp; --%>
	<div id="wrap">
		<header>
			<div class="inner relative">
				<a class="logo" href="#"></a> <a id="menu-toggle"
					class="button dark" href="#"><i class="icon-reorder"></i></a>
				<nav id="navigation">
					<ul id="main-menu">
						<li class="current-menu-item"><a href="<%=root%>/">Home</a></li>
						<li class="parent"><a href="#">게시판</a>
							<ul class="sub-menu">
								<li><a href="#"><i class="icon-wrench"></i> 고객게시판</a></li>
								<li><a href="#"><i class="icon-credit-card"></i> 이미지게시판</a></li>
								<li><a href="#"><i class="icon-gift"></i> 스마트게시판</a></li>

							</ul></li>
						<li><a href="#">로그인</a>
							<ul class="sub-menu">
								<li><a href="index.jsp?main=member/addform.jsp"><i
										class="icon-wrench"></i> 회원가입</a></li>
								<li><a href="index.jsp?main=member/memberlist.jsp"><i class="icon-credit-card"></i> 회원목록</a></li>
								<li><a href="index.jsp?main=member/mypage.jsp"><i class="icon-gift"></i> 마이페이지</a></li>

							</ul></li>
						<li class="parent"><a href="#">방명록</a>
							<ul class="sub-menu">
								<li><a href="#">회원방명록</a></li>
								<li><a href="#">Medium Image</a></li>

							</ul></li>
						<li><a href="#">About Maison</a></li>
					</ul>
				</nav>
				<div class="clear"></div>
			</div>
		</header>
	</div>

</body>
</html>