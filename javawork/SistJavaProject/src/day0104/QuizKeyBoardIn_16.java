package day0104;

import java.util.Scanner;

public class QuizKeyBoardIn_16 {

	public static void main(String[] args) {
		/*
		 * 상품명을 입력하세요==>아이폰15
		 * 가격은 얼마입니까?==>1200000
		 * 수량은 몇개입니까==>5
		 * 
		 * 상품입고
		 * ==========================
		 * 입고상품명:  아이폰13
		 * 수량: 5개
		 * 가격: 1200000원
		 * ===========================
		 * 총가격: 6000000원
		 * 
		 * 
		 */
		
		//1.import
		Scanner sc=new Scanner(System.in);
		
		//2.변수
		String sangName;
		int su,dan,totalPrice;
		
		//입력
		System.out.print("상품명을 입력하세요==>");
		sangName=sc.nextLine();
		System.out.print("수량을 입력하세요==>");
		su=sc.nextInt();
		System.out.print("가격을 입력하세요==>");
		dan=sc.nextInt();
		
		//계산
		totalPrice=su*dan;
		
		//최종출력
		System.out.println("\t[상품입고]");
		System.out.println("=============================");
		System.out.println("입고상품명: "+sangName);
		System.out.println("입고수량: "+su+" 개");
		System.out.println("입고가격: "+dan+" 원");
	    System.out.println("=============================");
	    System.out.println("총가격: "+totalPrice+" 원");

	}

}
