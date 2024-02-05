package day0105;

import java.util.Scanner;

public class OperTest_08 {

	public static void main(String[] args) {
		// 신체검사를 하는데 이름과 키,몸무게 입력하면
		//표준몸무게를 출력해보기(키-100)*0.9...표준몸무게는 소수점한자리로 출력해 주세요
		/*
		 * 당신의 이름? 이효리
		 * 키? 165
		 * 몸무게? 55
		 * 
		 * =============================
		 * 이효리님의 권장 표준몸무게는 55.2Kg 입니다
		 * 
		 */

		Scanner sc=new Scanner(System.in);
		
		String name;
		double my_height,my_weight,st_weight;
		
	    System.out.println("당신의 이름는?");
	    name=sc.nextLine();
	    System.out.println("당신의 키는?");
	    my_height=sc.nextDouble();
	    System.out.println("당신의 몸무게는?");
	    my_weight=sc.nextDouble();
	    
	    //표준
	    st_weight=(my_height-100)*0.9;
	    
	    //출력
	    System.out.println("=====================================");
	    System.out.printf("%s님의 표준몸무게는 %.1f Kg",name,st_weight);
	}

}
