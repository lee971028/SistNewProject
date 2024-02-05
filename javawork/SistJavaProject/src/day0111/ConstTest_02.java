package day0111;

class Apple{
	
	public Apple() {
		System.out.println("Apple_디폴트 생성자");
	}
}
///////////////
class Banana{
	
	public Banana(String str) {
		System.out.println("Banana생성자호출: "+str);
	}
}
/////////////////
class Orange{
	
	//생성자 오버로딩
	public Orange() {
		System.out.println("Orange의 디폴트 생성자호출");
	}
	public Orange(String str) {
		System.out.println("Oranged의 2번째 생성자: "+str);
	}
	public Orange(int n) {
		this();  //기본생성자 호출,반드시 첫줄
		System.out.println("Oranged의 3번째 생성자: "+n);
		
	}
	
	
}
/////////////////////
public class ConstTest_02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

			Apple apple=new Apple();
			Banana banana=new Banana("바나나");
			Orange or1=new Orange();
			Orange or2=new Orange("오렌지");
			Orange or3=new Orange(22);
			
	}

}
