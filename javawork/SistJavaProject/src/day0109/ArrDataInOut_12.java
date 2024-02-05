package day0109;

import java.util.Scanner;

public class ArrDataInOut_12 {

	public static void main(String[] args) {
		// 배열생성후 생성한 만큼의 입력 출력
		Scanner sc=new Scanner(System.in);
		
		int []data;
		data=new int[5];
		
		int sum=0;
		
		//값입력
		for(int i=0;i<data.length;i++)
		{
			System.out.print((i+1)+"번째값: ");
			data[i]=sc.nextInt();
			sum+=data[i];
		}
		
		//값출력
		System.out.println();
		System.out.println("**입력값 확인**");
		for(int i=0;i<data.length;i++)
		{
			System.out.println(i+"==>"+data[i]);
		}
		
		System.out.println("======================");
		System.out.println("총합계: "+sum);

		
	}

}
