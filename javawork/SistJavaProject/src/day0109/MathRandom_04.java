package day0109;

public class MathRandom_04 {

	public static void main(String[] args) {
		// 자바에서 랜덤수(난수)를 구하는 방법
		//1. Math.random() 메서드를 이용하는 방법
		//2. Random 이라는 클래스를 이용

		System.out.println("기본 랜덤수 5개 발생");
		
		for(int i=1;i<=5;i++)
		{
			double a=Math.random(); //0.0*****~0.9******* 
			System.out.println(a);
		}
		System.out.println("-------------------------");
		System.out.println("0~9 사이의 랜덤수 5개 발생");
		for(int i=1;i<=5;i++)
		{
			int a=(int)(Math.random()*10); //0~9
			System.out.println(a);
		}
		
		System.out.println("-------------------------");
		System.out.println("0~99 사이의 랜덤수 5개 발생");
		for(int i=1;i<=5;i++)
		{
			int a=(int)(Math.random()*100); //0~99
			System.out.println(a);
		}
		
		System.out.println("-------------------------");
		System.out.println("1~10 사이의 랜덤수 5개 발생");
		for(int i=1;i<=5;i++)
		{
			int a=(int)(Math.random()*10)+1; //1~10
			System.out.println(a);
		}
		
		System.out.println("-------------------------");
		System.out.println("1~100 사이의 랜덤수 5개 발생");
		for(int i=1;i<=5;i++)
		{
			int a=(int)(Math.random()*100)+1; //1~100
			System.out.println(a);
		}
	}

}
