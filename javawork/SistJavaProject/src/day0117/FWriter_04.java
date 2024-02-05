package day0117;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class FWriter_04 {

	Scanner sc;
	FileWriter fw;
	static final String FILENAME="C:\\sist0103\\file\\member.txt";
	
	public FWriter_04() {
		sc=new Scanner(System.in);
	}
	
	public void dataWrite()
	{
		try {
			fw=new FileWriter(FILENAME,true);
			
			//키보드로 이름,주소,핸드폰번호 입력후 파일에 저장
			System.out.println("이름입력");
			String name=sc.nextLine();
			System.out.println("주소입력");
			String addr=sc.nextLine();
			System.out.println("연락처입력");
			String hp=sc.nextLine();
			
			System.out.println("**파일저장! 파일을 확안하세요**");
			
			//파일에 저장
			fw.write("회원명:" +name+"\n");
			fw.write("주소: "+addr+"\n");
			fw.write("연락처: "+hp+"\n--------------------\n");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				fw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FWriter_04 fw=new FWriter_04();
		fw.dataWrite();
	}
	
	

}
