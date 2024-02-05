package day0104;

import java.util.Calendar;

public class Calendar_11 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Calendar cal=Calendar.getInstance();
		
		System.out.println("지금은 "+cal.get(cal.YEAR)+"년도 입니다");
		System.out.println("지금은 "+(cal.get(cal.MONTH)+1)+"월 입니다"); //월은 +1
		System.out.println("지금은 "+cal.get(cal.DATE)+"일 입니다");
		System.out.println("지금은 "+cal.get(cal.DAY_OF_MONTH)+"일 입니다");
		System.out.println("시간: "+cal.get(cal.HOUR_OF_DAY)+"시"+cal.get(cal.MINUTE)+"분");
	}

}
