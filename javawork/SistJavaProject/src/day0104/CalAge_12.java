package day0104;

import java.util.Calendar;

public class CalAge_12 {

	public static void main(String[] args) {
		// 실행단계에서 변수입력하여 이름,태어난년도 를 입력하여 나이를 출력해보자

		//1.import
		Calendar calendar=Calendar.getInstance();
		
		//2.변수
		String name=args[0];
		
		int curYear=calendar.get(calendar.YEAR);  //현재년도
		//Integer.parseInt: String==>int로 변환
		int myYear=Integer.parseInt(args[1]);
		
		//3.계산
		int myAge=curYear-myYear;
				
		//4.출력
		System.out.println("이름: "+name);
		System.out.println("태어난 년도: "+myYear+" 년생");
		System.out.println("나이: "+myAge+"세");
	}

}
