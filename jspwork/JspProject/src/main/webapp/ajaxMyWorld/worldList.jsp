<%@page import="java.text.SimpleDateFormat"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="myworld.model.WorldDto"%>
<%@page import="java.util.List"%>
<%@page import="myworld.model.WorldDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	WorldDao dao=new WorldDao();
   //목록
   List<WorldDto> list=dao.getAllMyWorld();
   
   JSONArray arr=new JSONArray();
   SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
   for(WorldDto dto:list)
   {
	   JSONObject ob=new JSONObject();
	   ob.put("num", dto.getNum());
	   ob.put("writer", dto.getWriter());
	   ob.put("content",dto.getContent());
	   ob.put("avata", dto.getAvata());
	   ob.put("writeday",sdf.format(dto.getWriteday()));
	   
	   //arr에추가
	   arr.add(ob);
	   
   }
%>

<%=arr.toString()%>