package day0110;

public class CardTest_08 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Card.width=10;
		Card.height=20;
		
		//클래스가 로딩될때 변수명도 바로 로딩
		System.out.println(Card.width);
		System.out.println(Card.height);
		
		//인스턴스 변수 생성
		Card c1=new Card();
		System.out.println(c1.kind);  
		System.out.println(c1.number);
		
		c1.kind="Heart";
		c1.number=7;
		
		Card c2=new Card();
		c2.kind="Spade";
		c2.number=6;
		
		System.out.println(c1.kind+","+c1.number+","+Card.width+","+Card.height);
		System.out.println(c2.kind+","+c2.number+","+Card.width+","+Card.height);
		
		//카드너비 높이 50 80
		Card.width=50;
		Card.height=80;
		
		System.out.println(c1.kind+","+c1.number+","+Card.width+","+Card.height);
		System.out.println(c2.kind+","+c2.number+","+Card.width+","+Card.height);
		
		
	}

}
