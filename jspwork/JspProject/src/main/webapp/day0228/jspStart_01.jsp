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
  <h4>Jsp는 HTML5구조에 자바코드를 사용할수있는 서버언어이다</h4>
  <h4>Servlet은 확장자가 java이며 자바클래스구조에 <br>html,css,javascript도 사용가능한
  서버언어이다</h4>
  <hr>
  <h4>jsp주석은 2가지가 가능</h4>
  <!-- 주석1:html기본주석: 소스보기에서 보인다 -->
  <%--jsp주석: 소스보기에서 안보인다 안에 자바코드가 있을경우 이주석은 비실행 --%>
  
 
  <%!
    //선언문
    //이곳은 선언한 변수나 메서드는 클래스의 멤버변수나 메서드로 등록된다
    
  %>
  
  <h4>java코드 쓰려면 scriptlet 영역을 표시후 코딩</h4>
  
  <%
     //스크립트릿
     //여기서선언하는 변수는 지역변수로 등록
     //그래서 이곳의 변수를 html에서 사용하려면 선언한 곳보다 아래서 사용한다
     
     //주석도 자바주석 모든자바코드 가능
     int age=20;
  	 String name="이효리";
  %>
  
  <h4>문자열이나 변수출력은 표현식을 이용해서 출력한다</h4>
  
   <b>이름: </b><%=name %>님<br>
  <b>나이: </b><%=age %>세<br>
</body>
</html>