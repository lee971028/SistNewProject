package day0110;

class Ipgo{
	private String sangName;
	private int price;
	
	//set메서드
	public void setName(String name)
	{
		this.sangName=name;
	}
	public void setPrice(int price)
	{
		this.price=price;
	}
	//get메서드
	public String getName()
	{
		return sangName;
	}
	public int getPrice()
	{
		return price;
	}
}


public class SangpumIpgo_13 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Ipgo ipgo1=new Ipgo();
		ipgo1.setName("애플워치");
		ipgo1.setPrice(580000);
		
		String name1=ipgo1.getName();
		int price1=ipgo1.getPrice();
		////////////////////////////////////
		Ipgo ipgo2=new Ipgo();
		ipgo2.setName("에어팟");
		ipgo2.setPrice(320000);
		
		String name2=ipgo2.getName();
		int price2=ipgo2.getPrice();
		
		
		System.out.println(name1+","+price1+"원");
		System.out.println(name2+","+price2+"원");
		
		
	}

}
