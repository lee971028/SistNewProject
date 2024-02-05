package day0115;

import java.util.List;
import java.util.Scanner;
import java.util.Vector;

public class VectorBoard_09 {

	List<Board_09> list=new Vector<Board_09>();
	//제네릭 유형을 클래스로 지정했으므로 데이터를 꺼내고 받을때도 클래스
	
	//입력메서드
	public void inputData()
	{
		Scanner sc=new Scanner(System.in);
		String writer,subject,content;
		
		System.out.println("작성자명?");
		writer=sc.nextLine();
		System.out.println("제목?");
		subject=sc.nextLine();
		System.out.println("내용?");
		content=sc.nextLine();
		
		Board_09 data=new Board_09(writer, subject, content);
		list.add(data);
		
		System.out.println("현재데이타갯수: "+list.size()+" 개");
	}
	
	//출력
	public void writeData()
	{
		System.out.println("**IT 교재 목록**");
		System.out.println("====================================");
		for(int i=0;i<list.size();i++)
		{
			Board_09 b=list.get(i); 
			System.out.println("No. "+(i+1)+"\t작성자: "+b.getWriter());
			System.out.println("제목: "+b.getSubject());
			System.out.println("내용: "+b.getContent());
			System.out.println("--------------------------------------");
		}
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		VectorBoard_09 vt=new VectorBoard_09();
		Scanner sc=new Scanner(System.in);
		int n;
		
		while(true)
		{
			System.out.println("1.입력    2.전체출력    9.종료");
			n=Integer.parseInt(sc.nextLine());
			
			if(n==1)
				vt.inputData();
			else if(n==2)
				vt.writeData();
			else if(n==9)
			{
				System.out.println("**종료합니다***");
				break;
			}
		}
	}

}
