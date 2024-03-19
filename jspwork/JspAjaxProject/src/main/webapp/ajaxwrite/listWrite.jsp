<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="ajaxwrite.model.AjaxWriteDto"%>
<%@page import="java.util.List"%>
<%@page import="ajaxwrite.model.AjaxWriteDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	AjaxWriteDao dao=new AjaxWriteDao();
    List<AjaxWriteDto> list=dao.getAllDatas();
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    
    JSONArray arr=new JSONArray();
    
    for(AjaxWriteDto dto:list)
    {
    	JSONObject ob=new JSONObject();
    	
    	ob.put("num", dto.getNum());
    	ob.put("writer", dto.getWriter());
    	ob.put("subject", dto.getSubject());
    	ob.put("story", dto.getStory());
    	ob.put("image", dto.getImage());
    	ob.put("likes", dto.getLikes());
    	ob.put("writeday", sdf.format(dto.getWriteday()));
    	
    	arr.add(ob);
    }
%>
<%=arr.toString()%>