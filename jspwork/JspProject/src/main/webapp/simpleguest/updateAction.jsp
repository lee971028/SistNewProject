<%@page import="simpleguest.model.GuestDto"%>
<%@page import="simpleguest.model.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");

	String num = request.getParameter("num");
	String pass = request.getParameter("pass");
	String nickname = request.getParameter("nickname");
	String content = request.getParameter("content");
	String image = request.getParameter("image");

	GuestDao dao = new GuestDao();
	//비밀번호가 맞으면 수정후 목록으로이동
	if (dao.isEqualPass(num, pass)) {
		GuestDto dto = new GuestDto();
		dto.setNum(num);
		dto.setNickname(nickname);
		dto.setContent(content);
		dto.setImage(image);

		//수정메서드 호출
		dao.updateGuest(dto);

		response.sendRedirect("guestList.jsp");

	} else {
	%>
	<script type="text/javascript">
		alert("비밀번호가 맞지않습니다!!");
		history.back();
	</script>
	<%
	}
	%>
</body>
</html>