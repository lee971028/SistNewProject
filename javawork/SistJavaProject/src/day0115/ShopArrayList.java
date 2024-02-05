package day0115;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

class Shop{
	
	private String sangName;
	private int su;
	private int dan;
	
	
	public String getSangName() {
		return sangName;
	}
	public void setSangName(String sangName) {
		this.sangName = sangName;
	}
	public int getSu() {
		return su;
	}
	public void setSu(int su) {
		this.su = su;
	}
	public int getDan() {
		return dan;
	}
	public void setDan(int dan) {
		this.dan = dan;
	}
	
	//총액
	public int getTot()
	{
		int s=this.su*this.dan;
		return s;
	}
	
	
}
/////////////////////////
public class ShopArrayList {

	List<Shop> list=new ArrayList<Shop>();
	
	public void ipgo() {
		
		Scanner sc=new Scanner(System.in);
		String sang;
		int su,dan;
		
		System.out.println("입고된 상품명?");
		sang=sc.nextLine();
		System.out.println("가격은?");
		dan=Integer.parseInt(sc.nextLine());
		System.out.println("수량은?");
		su=Integer.parseInt(sc.nextLine());
		
		Shop shop=new Shop();
		shop.setSangName(sang);
		shop.setDan(dan);
		shop.setSu(su);
		
		list.add(shop);
		
		System.out.println("현재입고된 상품개수: "+list.size()+"개 입니다");
		
	}
	
	
	public void jego() {
		
		System.out.println("**상품 재고 현황**");
		System.out.println();
		System.out.println("번호\t상품명\t상품가격\t수량\t총액");
		System.out.println("================================================");
		for(int i=0;i<list.size();i++)
		{
			Shop sh=list.get(i);
			System.out.println(i+1+"\t"+sh.getSangName()+"\t"+sh.getDan()+"\t"+sh.getSu()+"\t"+sh.getTot());
			System.out.println("--------------------------------------------------------------");
		}
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ShopArrayList sa=new ShopArrayList();
		
		Scanner sc=new Scanner(System.in);
		int num;
		
		while(true)
		{
			System.out.println("1.상품입고    2.재고현황     9.종료");
			num=Integer.parseInt(sc.nextLine());
			
			if(num==1)
				sa.ipgo();
			else if(num==2)
				sa.jego();
			else if(num==9)
			{
				System.out.println("종료합니다");
				break;
			}
		}
	}

}
  