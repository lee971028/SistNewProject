<?xml version="1.0" encoding="UTF-8"?>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
    String name=request.getParameter("name");
    String hp=request.getParameter("hp");
    System.out.println("name: "+name);
    System.out.println("hp: "+hp);
 %>
 <name><%=name %></name>
