package day0116;

import java.util.StringTokenizer;

public class StringToken_13 {

	public static void main(String[] args) {
		// 문자열을 특정기호로 분리하는 방법들
		String str="red,yellow,cyan,gray,pink";
		
		System.out.println("String 객체의 split을 이용한 분리");
		String [] arrColors=str.split(",");
		System.out.println("총 "+arrColors.length+"개");
		
		for(int i=0;i<arrColors.length;i++)
		{
			System.out.println(i+":"+arrColors[i]);
		}
		
		System.out.println("String 객체의 StringTokeneizer을 이용한 분리");
		StringTokenizer st=new StringTokenizer(str, ",");
		System.out.println("총토큰수: "+st.countTokens());
		
		while(st.hasMoreTokens()) //다음토큰이있으면 true,없으면 false
		{
			System.out.println(st.nextToken()); //다음토큰얻기
		}

	}

}
