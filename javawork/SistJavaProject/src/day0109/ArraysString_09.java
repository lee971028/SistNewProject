package day0109;

public class ArraysString_09 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//배열선언
		String [] str;
		str=new String[4];
		
		//초기화
		str[0]="김구라";
		str[1]="유재석";
		str[2]="하하";
		str[3]="광수";
		
		//출력
		System.out.println("출력1_for");
		for(int i=0;i<str.length;i++)
		{
			System.out.println(i+":"+str[i]);
		}
		System.out.println("출력1_foreach");
		for(String s:str)
		{
			System.out.println(s);
		}
	}

}
