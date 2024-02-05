package day0115;

import java.util.Scanner;

interface Command{
	public void write();
}
/////////////////////
class Insert implements Command{

	@Override
	public void write() {
		// TODO Auto-generated method stub
		System.out.println("게시판에 게시물을 입력합니다");
	}
	
}
/////////////////
class List implements Command{

	@Override
	public void write() {
		// TODO Auto-generated method stub
		System.out.println("게시판에 게시물을 출력합니다");
	}
	
}
/////////////////
class Modify implements Command{

	@Override
	public void write() {
		// TODO Auto-generated method stub
		System.out.println("게시판에 게시물을 수정합니다");
	}
	
}
///////////////////
class Delete implements Command{

	@Override
	public void write() {
		// TODO Auto-generated method stub
		System.out.println("게시판에 게시물을 삭제합니다");
	}
	
}
public class InheritBoard_03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner sc=new Scanner(System.in);
		Command comm=null;
		int n;
		
	exit: while(true)
		{
			System.out.println("1.추가  2.출력  3.수정   4.삭제  그이외숫자.종료");
			System.out.print("========>");
			n=sc.nextInt();
			
			switch(n)
			{
				case 1:
					comm=new Insert();
					break;
				case 2:
					comm=new List();
					break;
				case 3:
					comm=new Modify();
					break;
				case 4:
					comm=new Delete();
					break;
				default:
					System.out.println("종료합니다");
					break exit; //while문 빠져나간다
				
			}
			
			if(n<=4)
				comm.write(); //1,2,3,4출력
			else
				break;
			
			
		}
		
		
	}

}
