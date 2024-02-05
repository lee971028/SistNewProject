package day0115;

public class DriverExep_14 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
          try {
			Class cla=Class.forName("java.lang.String");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			System.out.println("클래스를 찾을 수 없습니다");
		}finally {
			System.out.println("프로그램 안전종료!!!");
		}
	}

}
