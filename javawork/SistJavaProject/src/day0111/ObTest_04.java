package day0111;

class MyCar{
	
	private String carName;
	private String carColor;
	private int carPrice;
	
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
	
	public void getCarInfo()
	{
		System.out.println("자동차명: "+this.carName);
		System.out.println("차량가격: "+this.carPrice);
		System.out.println("차량색상: "+carColor);
	}
	
}

///////////////////////
public class ObTest_04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		MyCar car=new MyCar();
		car.setCarName("제네시스");
		car.setCarPrice(50000000);
		car.setCarColor("화이트");
		
		System.out.println("[나의 자동차 정보]");
		car.getCarInfo();
		
		System.out.println("[나의 새차 정보]");
		car.setCarName("그렌저");
		car.setCarPrice(40000000);
		car.setCarColor("블랙");
		
		car.getCarInfo();
	}

}
