package day0115;

import java.util.Date;

public class NullPointExeption_13 {

	Date date; //new Date
	
	public void write()
	{
		int y,m,d;
		
		try {
			y=date.getYear()-1900;
			m=date.getMonth()+1;
			d=date.getDate();
			
			System.out.println(y+"년"+m+"월"+d+"일 입니다");
		}catch (NullPointerException e) {
			//e.printStackTrace();
			System.out.println("객체 생성을 안했어요"+e.getMessage());
		}
	}
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NullPointExeption_13 nullex=new NullPointExeption_13();
		nullex.write();
		System.out.println("**프로그램 정상종료**");
	}

}
