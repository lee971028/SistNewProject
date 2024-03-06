<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   //front에서 보낸 데이타읽기
    String photo=request.getParameter("foodphoto");
	String fname=request.getParameter("foodname");
	String like1=request.getParameter("like1");
	String like2=request.getParameter("like2");
	String like3=request.getParameter("like3");
	
	//총점..String==>int
	int tot=Integer.parseInt(like1)+Integer.parseInt(like2)+Integer.parseInt(like3);
	
	//평균
	double avg=tot/3.0;
	
	//front형태로 만들어서 보내기
	JSONObject ob=new JSONObject();
	ob.put("photo", "../image/Food/"+photo+".jpg");
	ob.put("food", fname);
	ob.put("tot", tot);
	ob.put("avg", avg);
	
	
%>
<%=ob.toString()%>