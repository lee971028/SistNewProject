<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mysql.db.DbConnect"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <data>
    <%
    DbConnect db=new DbConnect();
    Connection conn=db.getConnection();
    PreparedStatement pstmt=null;
    ResultSet rs=null;
    
    String sql="select * from food order by num";
    try{
    	pstmt=conn.prepareStatement(sql);
    	rs=pstmt.executeQuery();
    
        while(rs.next())
        {
        	String num=rs.getString("num");
        	String name=rs.getString("foodname");
        	String photo=rs.getString("foodphoto");
        	int price=rs.getInt("price");
        	int cnt=rs.getInt("cnt");
        	
        	%>
        	
        	<food num="<%=num%>">
        	   <foodname><%=name %></foodname>
        	   <foodphoto><%=photo %></foodphoto>
        	   <price><%=price %></price>
        	   <cnt><%=cnt %></cnt>
        	</food>
        	
        <%}
    
    
    }catch(SQLException e){
    	
    }finally{
    	db.dbClose(rs, pstmt, conn);
    	
    }
    %>
  </data>
