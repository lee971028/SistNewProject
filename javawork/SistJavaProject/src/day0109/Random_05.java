package day0109;

import java.util.Random;

public class Random_05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
         Random r=new Random();
         
         System.out.println("0~9사이의 난수 5개발생");
         for(int i=1;i<=5;i++)
         {
        	 int a=r.nextInt(10); //0~9
        	 System.out.println(a);
         }
         System.out.println("--------------------");
         System.out.println("0~99사이의 난수 5개발생");
         for(int i=1;i<=5;i++)
         {
        	 int a=r.nextInt(100); //0~99
        	 System.out.println(a);
         }
         System.out.println("--------------------");
         
         System.out.println("1~10사이의 난수 5개발생");
         for(int i=1;i<=5;i++)
         {
        	 int a=r.nextInt(10)+1; //1~10
        	 System.out.println(a);
         }
         System.out.println("--------------------");
         
         System.out.println("65~90사이의 난수 5개발생");
         for(int i=1;i<=5;i++)
         {
        	 int a=r.nextInt(26)+65; //65~90
        	 System.out.println((char)a);
         }
         System.out.println("--------------------");
	}

}
