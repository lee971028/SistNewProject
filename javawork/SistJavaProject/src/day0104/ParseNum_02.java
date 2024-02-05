package day0104;

public class ParseNum_02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String su1="8";
		String su2="2";
		System.out.println("두수 더하기: "+(su1+su2));
		
		//문자열 su1,su2를 정수타입 int로 변환후 계산해보기
		//Wrapper Class: 기본형과 클래스형간의 변환을 위한 클래스를 (Integer,Double,Long...)
		int s1=Integer.parseInt(su1);
		int s2=Integer.parseInt(su2);
		
		System.out.println("변환후 두수더하기: "+(s1+s2));
		System.out.println("변환후 두수빼기: "+(s1-s2));
		System.out.println("변환후 두수곱하기: "+(s1*s2));
		System.out.println("변환후 두수나누기: "+(s1/s2));
		//정수형끼리 연산시 결과도 정수형
		
		
	}

}
