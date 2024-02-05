package oracleDb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbConnect {

	//url
	static final String ORACLE_DB="jdbc:oracle:thin:@localhost:1521:XE";
	
	//connect
	public Connection getOracle()
	{
		Connection conn=null;
		
		try {
			conn=DriverManager.getConnection(ORACLE_DB, "angel", "a1234");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("로칼 오라클연결실패!!!");
		}
		
		return conn;
	}
	
	//close메서드 총4개
	public void dbClose(ResultSet rs,Statement stmt,Connection conn)
	{
		
			try {
				if(rs!=null)  rs.close();
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public void dbClose(Statement stmt,Connection conn)
	{
		
			try {
				
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	//PrepareStatement
	public void dbClose(ResultSet rs,PreparedStatement pstmt,Connection conn)
	{
		
			try {
				if(rs!=null)  rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public void dbClose(PreparedStatement pstmt,Connection conn)
	{
		
			try {
				
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	

}
