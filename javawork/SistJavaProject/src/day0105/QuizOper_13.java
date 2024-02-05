package day0105;

import java.util.Scanner;

public class QuizOper_13 {

	public static void main(String[] args) {
		// 3개의 숫자를 입력하여 가장큰값max값을 구하시오
		//if문 && 삼항연산자로도 구해보세요
		/*
		 * 3개의 숫자를 입력하시오
		 * 3 
		 * 5 
		 * 4
		 * **if**
		 * max=5
		 * **삼항연산자**
		 * max=5
		 */
		
		Scanner sc=new Scanner(System.in);
		
		int x,y,z,max;
		
		System.out.println("3개의 숫자입력하시오");
		x=sc.nextInt();
		y=sc.nextInt();
		z=sc.nextInt();
		
		System.out.println("**If문**");
		if(x>y && x>z)
			max=x;
		else if(y>x && y>z)
			max=y;
		else
			max=z;
		
		System.out.println("max="+max);
		
		System.out.println("**조건연산자**");
		max=x>y&&x>z?x:y>x&&y>z?y:z;
		System.out.println("max="+max);
		

	}

}
