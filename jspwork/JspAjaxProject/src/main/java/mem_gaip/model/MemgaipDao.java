package mem_gaip.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mysql.db.DbConnect;

public class MemgaipDao {

	DbConnect db=new DbConnect();
	
	//아이디가 존재하면 true리턴
	public boolean isIdCheck(String m_id)
	{
		boolean b=false; //있을경우에만 true로 변경
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from memgaip where m_id=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			rs=pstmt.executeQuery();
			
			if(rs.next())
				b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
				
		
		return b;
	}
}
