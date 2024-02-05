package day0108;

import java.util.Scanner;

public class Quiz_18 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//quiz_1();
		quiz_2();
	}

	public static void quiz_1() {

		/*Q. 반복해서 숫자를 입력하여 양수의 갯수와 음수의 갯수를 구하시오(0입력시 종료)
		 * 
		 * 6
		 * -10
		 * 88
		 * 120
		 * -130
		 * 0
		 * 양수의 갯수: 3개
		 * 음수의 갯수: 2개
		 * */
		Scanner sc=new Scanner(System.in);
		int su;
		int pcnt=0,ncnt=0;
		
		while(true)
		{
			System.out.println("숫자입력");
			su=sc.nextInt();
			
			if(su==0)
				break;
			if(su>0)
				pcnt++;
			else
				ncnt++;
		}
		
		System.out.println("양수의 갯수: "+pcnt);
		System.out.println("음수의 갯수: "+ncnt);
		 
	}
	public static void quiz_2() {

		//Q. 반복해서 점수를 입력하고 (1~100)  0을 입력시 빠져나와 갯수와 합계와 평균을 구하시오
		//범위에 맞지않는 점수는 횟수에서 제외되어야 한다
		Scanner sc=new Scanner(System.in);
		int su;
		int cnt=0,sum=0;
		double avg;
		
		while(true)
		{
			System.out.println("점수입력");
			su=sc.nextInt();
			
			if(su==0)
				break;
			
			if(su<1||su>100)
			{
				System.out.println("\t다시입력바람");
				continue;
			}
			
			cnt++;
			sum+=su;
		}
		
		avg=(double)sum/cnt;
		
		System.out.println("총갯수: "+cnt+" 개");
		System.out.println("총점: "+sum);
		System.out.println("평균: "+avg);
		
	}
	

}
