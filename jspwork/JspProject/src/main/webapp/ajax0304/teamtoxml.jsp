<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.text.SimpleDateFormat"%>
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
 	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
 	
 	String sql="select * from team order by num";
 	
 	try{
 		pstmt=conn.prepareStatement(sql);
 		rs=pstmt.executeQuery();
 		
 		while(rs.next())
 		{
 			String num=rs.getString("num");
 			String name=rs.getString("name");
 			String driver=rs.getString("driver");
 			String addr=rs.getString("addr");
 			String writeday=sdf.format(rs.getTimestamp("writeday"));
 			%>
 			
 			<team num="<%=num %>">
 			   <name><%=name %></name>
 			   <driver><%=driver %></driver>
 			   <addr><%=addr %></addr>
 			   <writeday><%=writeday %></writeday>
 			</team>
 			
 		<%}
 	
 	}catch(SQLException e){
 		
 	}finally{
 		db.dbClose(rs, pstmt, conn);
 	}
%>
</data>