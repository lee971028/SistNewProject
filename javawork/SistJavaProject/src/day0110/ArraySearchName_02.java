package day0110;

import java.util.Scanner;

public class ArraySearchName_02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String [] names= {"홍길동","김길동","최길동","김재석","유재석","홍재석","강호동","이호동","유호동"};
	
		boolean flag;
		Scanner sc=new Scanner(System.in);
		String name;
		
		while(true)
		{
			System.out.println("검색할 이름");
			name=sc.nextLine();
			
			if(name.equalsIgnoreCase("q"))
			{
				System.out.println("종료합니다");
				break;
			}
			
			flag=false;
			
			for(int i=0;i<names.length;i++)
			{
				if(name.equals(names[i]))
				{
					flag=true;
					System.out.println(i+1+" 번째에서 검색됨");
				}
			}
			
			if(!flag)
				System.out.println(name+"님은 데이타에 없음");
		}
		
	}

}





















































































































































































