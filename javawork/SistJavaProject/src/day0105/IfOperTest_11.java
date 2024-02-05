package day0105;

public class IfOperTest_11 {

	public static void main(String[] args) {
		//if문과 삼항연산자 비교
		int score=99;
		char grade; //학점
		

		/*if(score>=90)
			grade='A';
		else if(score>=80)
			grade='B';
		else if(score>=70)
			grade='C';
		else if(score>=60)
			grade='D';
		else
			grade='F';*/
		
		//삼항연산자
		/*grade=score>=90?'A':
			score>=80?'B':
			score>=70?'C':
			score>=60?'D':'F';*/
			
		
		//switch
		switch(score/10)
		{
		case 10:case 9:
			grade='A';
			break;
		case 8:
			grade='B';
			break;
		case 7:
			grade='C';
			break;
		case 6:
			grade='D';
			break;
		default:
			grade='F';
				
			
		}
		
		System.out.println("학점은 "+grade+"입니다");
	}

}
