package day0112;

class Shop{
	private String sName;
	private int sPrice;
	private String sColor;
	
	private static int no;
	static String shopName="쌍용";
	
	//명시적생성자
	public Shop(String name,int price,String color) {
		this.sName=name;
		this.sPrice=price;
		this.sColor=color;
	}
	
	//제목
	public static void showTitle()
	{
		System.out.println("["+shopName+"매장 입고상품]");
		System.out.println();
		System.out.println("번호\t상품명\t가격\t색상");
		System.out.println("======================================");
	}
	
	//출력
	public void showSangPums()
	{
		no++;
		System.out.println(no+"\t"+sName+"\t"+sPrice+"\t"+sColor);
	}
}
/////////////////////////////
public class ArrReview_02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Shop [] shop= {
				new Shop("요가매트", 25000, "pink"),
				new Shop("아령", 18000, "black"),
				new Shop("레깅스", 45000, "beige"),
				new Shop("나시", 22000, "white")
		};
		
		Shop.showTitle();
		for(Shop s:shop)
			s.showSangPums();
		
		for(int i=0;i<shop.length;i++)
		{
			shop[i].showSangPums();
		}
	}

}
