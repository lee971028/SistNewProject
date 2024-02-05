package day0111;

/*
 * 메서드:  접근제한자(public)+지정예약어(static)+결과형리턴값(void)+메서드명()
 * 반복적인 코드를 줄여 코드의 관리가 쉽다
 * 하나의 메서드는 한가지 기능만을 수행하도록 작성
 */

public class ExMethod_13 {

	
	public static boolean aaa()
	{
		return false;
	}
	
	public static int bbb()
	{
		return 11;
	}
	
	public static int ccc(int x,int y)
	{
		int z=x+y;
		return z;
	}
	
	//메서드는 오버로딩이 가능하다
	public static int sum(int a,int b)
	{
		System.out.println("1번째 sum함수호출");
		return a+b;
	}
	public static double sum(int a,double b)
	{
		System.out.println("2번째 sum함수호출");
		return a+b;
	}
	public static double sum(double a,int b)
	{
		System.out.println("3번째 sum함수호출");
		return a+b;
	}
	
	//곱하기
	public static int mul(int num1,int num2)
	{
		int result=num1*num2;
		return result;
	}
	
	public static  double square(double num)
	{
		return num*num;
	}
	
	//나누기
	public static void divide(int num1,int num2)
	{
		if(num2==0)
		{
			System.out.println("0으로는 나눌수 없습니다");
			return;  //메소드 종료
		}
		
		System.out.println("나눗셈의 결과: "+num1/num2);
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		boolean a=aaa();
		System.out.println("a="+a);
		
		int b=bbb();
		System.out.println("b="+b);
		
		int c=ccc(20, 30);
		System.out.println("c="+c);
		
		//sum
		System.out.println(sum(3, 4));
		System.out.println(sum(3, 4.4));
		System.out.println(sum(3.5, 4));
		
		//곱
		System.out.println("10*20 곱:"+mul(10, 20));
		System.out.println("4.5의 제곱: "+square(4.5));
		
		//나누기
		divide(4, 2);
		divide(2, 1);
		
	}

}
