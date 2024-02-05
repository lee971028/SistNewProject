package day0105;

import java.util.Scanner;

public class IfTest_10 {

	public static void main(String[] args) {
		// 숫자하나를 입력하여 결과를 출력하시오
		/*
		 * 당신이 좋아하는 숫자는?
		 * 99
		 * 
		 * 그숫자는 홀수입니다
		 * 다음에 만나요!!!
		 */
		Scanner sc=new Scanner(System.in);
		
		int likeNum;
		
		
		System.out.println("당신이 좋아하는 숫자는?");
		likeNum=sc.nextInt();
		
		System.out.println("***If문***");
		if(likeNum%2==0)
			System.out.println("그숫자는 짝수입니다");
		else
			System.out.println("그숫자는 홀수입니다");
		System.out.println("다음에 만나요!!");
		

        System.out.println("***switch문***");
		
		switch(likeNum%2)
		{
		  case 0:
			  System.out.println("짝수");
			  break;
		  case 1:
			  System.out.println("홀수");
			  break;
			  
		}

	}

}
