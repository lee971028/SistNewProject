package day0111;

class Shop{
	private String sangpum;
	private int price;
	private String sangColor;
	
	public Shop(String s,int p,String c) {
		sangpum=s;
		price=p;
		sangColor=c;
	}
	
	//제목
	public static void showTitle()
	{
		System.out.println("상품명\t가격\t색상");
		System.out.println("==========================");
	}
	//생성한 갯수만큼 출력
	public void showShop()
	{
		System.out.println(sangpum+"\t"+price+"원\t"+sangColor);
	}
}


public class ArrObTest_11 {

	public static void main(String[] args) {
		//배열로 4개 생성해서 출력할것
         Shop [] shop=new Shop[4]; //null로 초기화 주소값 할당
         //shop[0].showShop();
         
         //4개의 shop배열에 생성자를 통해서 생성
         shop[0]=new Shop("키보드", 25000, "블랙");
         shop[1]=new Shop("모니터", 45000, "블랙");
         shop[2]=new Shop("마우스", 30000, "블랙");
         shop[3]=new Shop("마이크", 15000, "블랙");
         
         //출력
         Shop.showTitle();
         for(Shop s:shop)
        	 s.showShop();
         System.out.println("============================");
         
         Shop.showTitle();
         for(int i=0;i<shop.length;i++)
         {
        	 shop[i].showShop();
         }
         
	}

}
