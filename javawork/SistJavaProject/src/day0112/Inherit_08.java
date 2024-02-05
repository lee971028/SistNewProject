package day0112;

//부모클래스
class Car{
	
	private String carCompany; //제조회사
	private String carKind; //종루
	
	//디폴트생성자
	public Car() {
		super();
		carCompany="현대";
		carKind="전기차";
	}
	//명시적 생성자
	public Car(String comp,String kind) {

		this.carCompany=comp;
		this.carKind=kind;
	}
	//setter getter
	public String getCarCompany() {
		return carCompany;
	}
	public void setCarCompany(String carCompany) {
		this.carCompany = carCompany;
	}
	public String getCarKind() {
		return carKind;
	}
	public void setCarKind(String carKind) {
		this.carKind = carKind;
	}
	
	//메서드
	public void writeCar()
	{
		System.out.println("회사명: "+carCompany);
		System.out.println("종류: "+carKind);
	}
	
}
///////////////////
//자식클래스
class MyCar extends Car{
	private String carName;
	private String carColor;
	private int carPrice;
	
	public MyCar() {
		super();
		carName="아이오닉5";
	}
	
	public MyCar(String company,String kind,String name,String color,int price) {
		super(company, kind);
		this.carName=name;
		this.carColor=color;
		this.carPrice=price;
	}

	//setter getter
	public String getCarName() {
		return carName;
	}

	public void setCarName(String carName) {
		this.carName = carName;
	}

	public String getCarColor() {
		return carColor;
	}

	public void setCarColor(String carColor) {
		this.carColor = carColor;
	}

	public int getCarPrice() {
		return carPrice;
	}

	public void setCarPrice(int carPrice) {
		this.carPrice = carPrice;
	}
	
	//메서드 재정의
	@Override
	public void writeCar() {
		// TODO Auto-generated method stub
		super.writeCar();
		System.out.println("자동차명: "+carName);
		System.out.println("색상: "+carColor);
		System.out.println("가격: "+carPrice);
	}
	
}
////////////////////////////
public class Inherit_08 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println("**디폴트 생성자로 생성**");
		MyCar car1=new MyCar();
		car1.setCarColor("블랙");
		car1.setCarPrice(35000000);
		car1.writeCar();
		
		System.out.println("**명시적 생성자로 생성**");
		MyCar car2=new MyCar("기아", "가솔린", "코나", "화이트", 25000000);
		car2.writeCar();
		
		System.out.println("**부모 메서드 출력**");
		Car c1=new Car();
		c1.writeCar();
	}

}
