package day0108;

import java.util.Scanner;

public class OperYoon_04 {

	public static void main(String[] args) {
		//윤년공식:  year%4==0&&year%100!=0||year%400==0
		//연도를 입력해서 그해가 윤년인지 평년인지 출력하고 해당달이 몇일까지 있는지 출력해라

		Scanner sc=new Scanner(System.in);
		int year,month,days;
		boolean flag;
		
		System.out.println("년도와 월을 입력해 주세요");
		year=sc.nextInt();
		month=sc.nextInt();
		
		//월 잘못 입력시 프로그램 종료
		if(month<1 || month>12)
		{
			System.out.println("월을 잘못입력했어요!!");
			return; //메인메서드 종료
		}
		
		//윤년구하기
		flag=year%4==0&&year%100!=0||year%400==0;
		
		//if(flag==true)
		if(flag) //true는 생략가능(false인경우는 if(!flag)
			System.out.println(year+"년도는 윤년입니다");
		else
			System.out.println(year+"년도는 평년입니다");
		
		//해당년도의 월이 몇일까지 있는지 구하기
		if(month==4||month==6||month==9||month==11)
			days=30;
		else if(month==2) {
			
			if(flag)
				days=29;  //윤년일 경우는 29일까지 있다
			else
				days=28;
		}else
			days=31;
		
		System.out.println(year+"년 "+month+"월은 "+days+"일 까지 있습니다");
	}

}
