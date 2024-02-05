package day0108;

import java.util.Scanner;

public class Factorial_13 {

	public static void main(String[] args) {
		// 1~10까지의 팩토리얼 구하기
		int result=1;
		
		for(int i=1;i<=10;i++)
		{
			result*=i;
			System.out.println(i+"!"+"="+result);
		}
		
		
		//Q. 합계를 구할 숫자를 입력시 1부터 여러분이 입력한 숫자까지의 합을 구해주세요
		Scanner sc=new Scanner(System.in);
		
		int sum=0;
		int myNum;
		
		System.out.println("합계를 구할 숫자는?");
		myNum=sc.nextInt();
		
		for(int i=1;i<=myNum;i++)
			sum+=i;
		System.out.println("1부터 "+myNum+"까지의 합="+sum);
		

	}

}
