package day0115;

public class Exception_12 {

	public static void main(String[] args) {
		// 

		System.out.println("프로그램시작");
		try { //예외발생코드
			int num=3/0; //정수를 0으로 나누면 나오는 에러
		}catch (ArithmeticException e) {
			//에외처리코드
			 //e.printStackTrace(); //자세한 예외정보 출력
			
		}
		System.out.println("프로그램종료");
	}

}
