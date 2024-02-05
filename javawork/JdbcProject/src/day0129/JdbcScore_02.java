package day0129;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import oracleDb.DbConnect;

public class JdbcScore_02 {

	DbConnect db=new DbConnect();
	Scanner sc=new Scanner(System.in);
	
	public void insertSungjuk()
	{
		System.out.println("학생명");
		String name=sc.nextLine();
		System.out.println("자바점수");
		int java=Integer.parseInt(sc.nextLine());
		System.out.println("오라클점수");
		int oracle=Integer.parseInt(sc.nextLine());
		
		Connection conn=db.getOracle();
		PreparedStatement pstmt=null;
		
		String sql="insert into sungjuk (num,oracle,name,java) values (seq_score.nextval,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//바인딩
			pstmt.setInt(1, oracle);
			pstmt.setString(2, name);
			pstmt.setInt(3, java);
			
			//?갯수만큼 모두 바인딩후 실행
			pstmt.execute();  
			System.out.println("추가되었습니다~~");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	///////////////////////////////
	//전체출력
	public void writeAll()
	{
		//총점평균 먼저 계산후 출력
		this.calcTotalAverage();
		
		Connection conn=db.getOracle();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from sungjuk order by num";
		System.out.println("\t\t**학생성적 출력**");
		System.out.println();
		System.out.println("번호\t이름\t자바\t오라클\t총점\t평균");
		System.out.println("----------------------------------------------");
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				System.out.println(rs.getInt("num")+"\t"
						+rs.getString("name")+"\t"
						+rs.getInt("java")+"\t"
						+rs.getInt("oracle")+"\t"
						+rs.getInt("total")+"\t"
						+rs.getDouble("average"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
	}
	//////////////////////////////////
	//총점,평균구하는 메서드
	public void calcTotalAverage()
	{
		Connection conn=db.getOracle();
		Statement stmt=null;
		
		String sql="update sungjuk set total=java+oracle,average=(java+oracle)/2";
		
		try {
			stmt=conn.createStatement();
			stmt.execute(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(stmt, conn);
		}
		
	}
	////////////////////////////
	public void process()
	{
		while(true)
		{
			System.out.println("1.학생성적추가   2.학생정보전체출력   3.학생정보 삭제   4.학생정보 수정   9.종료");
			
			int num=Integer.parseInt(sc.nextLine());
			
			switch(num)
			{
			case 1:
				this.insertSungjuk();
				break;
			case 2:
				this.writeAll();
				break;
			case 3:
				this.deleteSungjuk();
				break;
			case 4:
				this.updateSungjuk();
				break;
			case 9:
				System.out.println("**성적프로그램종료**");
				System.exit(0);
			}
		}
	}
	//////////////////////////////////////
	public void updateSungjuk()
	{
		//수정할 num을 입력후 java,oracle 의 수정값을 입력받아 수정할것!!
		//num이 있을경우 "수정됨"  없을경우 "5번학생은 존재하지 않음"
		System.out.println("수정할 번호 선택");
		int num=Integer.parseInt(sc.nextLine());
		
		System.out.println("수정할 자바점수 입력");
		int java=Integer.parseInt(sc.nextLine());
		System.out.println("수정할 오라클점수 입력");
		int oracle=Integer.parseInt(sc.nextLine());
		
		Connection conn=db.getOracle();
		PreparedStatement pstmt=null;
		
		String sql="update sungjuk set java=?,oracle=? where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			//바인딩
			pstmt.setInt(1, java);
			pstmt.setInt(2, oracle);
			pstmt.setInt(3, num);
			
			//실행
			int n=pstmt.executeUpdate();
			
			if(n==1)
				System.out.println("수정됨!!");
			else
				System.out.println(num+"번 학생이 존재하지 않습니다");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	////////////////////////////////////////
	public void deleteSungjuk()
	{
		//시퀀스를 입력받아 해당 데이타 지운후 삭데되었습니다 출력
		//만약 해당번호 없으면 "5번 학생은 존재하지 않습니다" 출력하기
		System.out.println("삭제할 번호 입력");
		int num=Integer.parseInt(sc.nextLine());
		
		Connection conn=db.getOracle();
		PreparedStatement pstmt=null;
		
		String sql="delete from sungjuk where num=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			
			int n=pstmt.executeUpdate();
			if(n==0)
				System.out.println(num+"번 학생은 존재하지 않습니다");
			else
				System.out.println(n+"번 학생정보를 삭제했습니다");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		
		
	}
	
	///////////////////////////////////
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		JdbcScore_02 score=new JdbcScore_02();
		score.process();
	}

}
