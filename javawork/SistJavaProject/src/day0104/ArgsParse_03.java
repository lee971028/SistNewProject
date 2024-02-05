package day0104;

public class ArgsParse_03 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//변수선언
		String name=args[0];
		//String java=args[1];
		int java=Integer.parseInt(args[1]);
		int oracle=Integer.parseInt(args[2]);
		
		//변수를 이용한 출력
		System.out.println("내이름은 "+name);
		System.out.println("자바 점수는"+java+"점 입니다");
		System.out.println("오라클 점수는 "+oracle+"점 입니다");
		System.out.println("두과목의 합계는 "+(java+oracle)+"점 입니다");
		
	}

}
