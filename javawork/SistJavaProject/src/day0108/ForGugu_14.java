package day0108;

import java.util.Scanner;

public class ForGugu_14 {

	public static void main(String[] args) {
		// 중첩for문 이용한 구구단(2~9단)
		/*
		 * 기본구구단
		 * 
		 * for(int dan=2;dan<=9;dan++)//단
		{
			for(int j=1;j<=9;j++)
			{
				System.out.println(dan+"X"+j+"="+dan*j);
			}
			System.out.println();
		}*/

		//break문을 이용한 구구단
		loop1:	for(int dan=2;dan<=9;dan++)
		{
			for(int j=1;j<=9;j++)
			{
				if(j==5)
					//break;  //현재의 반복문을 빠져나가 상위의 dan++로 이동
					break loop1; //이름을 명시하여 여러반복문 빠져나가는것도 가능 (네이밍:)
				System.out.println(dan+"*"+j+"="+dan*j);
			}
			System.out.println();
		}


		System.out.println("Q. 단을 입력하면 해당단이 나오게 해주세요  [5단]\n2~9단까지만 가능합니다 0단입력시 종료!!");

		Scanner sc=new Scanner(System.in);
		int dan;

		while(true)
		{
			System.out.println("단을 입력하세요");
			dan=sc.nextInt();

			//종료조건
			if(dan==0)
			{
				System.out.println("프로그램을 종료!!!");
				break;
			}

			//잘못입력한 경우
			if(dan<2 || dan>9)
			{
				System.out.println("2~9단까지만 입력해주세요 ");
				continue;
			}

			//구구단 출력
			System.out.println("["+dan+"단]\n");

			for(int j=1;j<=9;j++)
			{
				//System.out.println(dan+"X"+j+"="+dan*j);
				System.out.printf("%d x %d = %2d\n",dan,j,dan*j);
			}
			System.out.println();
		}

		System.out.println("가로 방향으로 구구단 출력");
		/*
		 * [2단]     [3단]     [4단] -단일 for
		 * 2x1=2    3x1=3    4x1=4  -다중 for
		 * 2x2=4
		 */

		for(int d=2;d<=9;d++)
		{
			System.out.print("["+d+"단]\t");
		}

		System.out.println();
		System.out.println();

		for(int i=1;i<=9;i++)
		{
			for(int d=2;d<=9;d++)
			{
				System.out.print(d+"x"+i+"="+d*i+"\t");
			}
			System.out.println();
		}
	}

}
