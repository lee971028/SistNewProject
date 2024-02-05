package day0112;

import java.util.Scanner;

//추상부모클래스
abstract class Board{
	
	public abstract void play();
}
///////////////////
class Insert extends Board{

	@Override
	public void play() {
		// TODO Auto-generated method stub
		System.out.println("입력합니다");
	}
	
}
//////////////////
class Select extends Board{

	@Override
	public void play() {
		// TODO Auto-generated method stub
		System.out.println("출력합니다");
	}
	
}
////////////////////
class Update extends Board{

	@Override
	public void play() {
		// TODO Auto-generated method stub
		System.out.println("수정합니다");
	}
	
}
///////////////////////
class Delete extends Board{

	@Override
	public void play() {
		// TODO Auto-generated method stub
		System.out.println("삭제합니다");
	}
	
}
//////////////////////////
public class Abstract_12 {

	public static void main(String[] args) {
		// 다형성으로 생성 메서드 출력
		/*Board board;
		
		board=new Insert();
		board.play();
		
		board=new Select();
		board.play();
		
		board=new Update();
		board.play();
		
		board=new Delete();
		board.play();*/
		
		//Board board=new Board(); //추상클래스 new로 생성못함
		
		Scanner sc=new Scanner(System.in);
		int num=0;
		Board board=null; //부모클래스 선언
		
		while(true)
		{
			System.out.println("1.쓰기  2.조회  3.수정  4.삭제  5.그외숫자 종료");
			num=sc.nextInt();
			
			switch(num)
			{
			case 1:
				board=new Insert();
				break;
			case 2:
				board=new Select();
				break;
			case 3:
				board=new Update();
				break;
			case 4:
				board=new Delete();
				break;
			default:
				System.out.println("종료합니다");
				System.exit(0); //강제종료
					
			}
			
			board.play();
		}
		
		

	}

}
