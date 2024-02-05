package day0105;

import java.util.Scanner;

public class QuizOper_07 {

	public static void main(String[] args) {
		// 여러분이 받은 알바비를 입력한후 만원,천원,백원,십원,일원의 갯수를 출력하시오
        /*
         * 알바비는?  568712
         * 
         * 만원: 56
         * 천원: 8
         * 백원: 7
         * 십원:1
         * 일원:2
         */
		Scanner sc=new Scanner(System.in);
		
		int money;
		
		System.out.print("알바비 얼마에요?==>");
		money=sc.nextInt();
		
		System.out.println("만원: "+money/10000);
		System.out.println("천원: "+(money%10000)/1000);
		System.out.println("백원: "+(money%1000)/100);
		System.out.println("십원: "+(money%100)/10);
		System.out.println("일원: "+(money%10));
		
	}

}
