package oracle.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbConnect {

	static final String ORACLEDRIVER="oracle.jdbc.OracleDriver";
	static final String ORACLE_URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	public DbConnect() {
		try {
			Class.forName(ORACLEDRIVER);
			System.out.println("드라이버성공");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			System.out.println("오라클드라이버 실패"+e.getMessage());
		}
	}
	
	
	public Connection getConnection()
	{
		Connection conn=null;
		
		try {
			conn=DriverManager.getConnection(ORACLE_URL, "angel", "a1234");
			System.out.println("오라클계정연결성공");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("오라클연결실패: "+e.getMessage());
		}
		
		
		return conn;
	}
	
	//close 총 4개 오버로딩
	public void dbClose(ResultSet rs,Statement stmt,Connection conn)
	{
		 
			try {
				if(rs!=null) rs.close();
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
	
	public void dbClose(ResultSet rs,PreparedStatement pstmt,Connection conn)
	{
		 
			try {
				if(rs!=null) rs.close();
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
