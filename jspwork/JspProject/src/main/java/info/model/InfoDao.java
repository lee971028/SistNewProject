package info.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import oracle.db.DbConnect;

public class InfoDao {
 
	DbConnect db=new DbConnect();
	
	public void infoInsert(InfoDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into info values(seq_1.nextval,?,?,sysdate)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//?바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getAddr());
			
			//업데이트
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
}
