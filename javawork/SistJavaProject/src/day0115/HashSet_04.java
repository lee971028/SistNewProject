package day0115;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

//HashSet:순서를 유지하지않는 데이타 집합,중복허용 안됨
//구현클래스,인덱스 없음
//Set인터페이스를 구현하려면 HashSet
//<E> 제네릭: 타입을 명시하면 그이외 타입을 넣으면 오류
public class HashSet_04 {

	public static void main(String[] args) {
		// 컬렉션은 가변적이므로 배열의 고정형을 보완해 준다

		
		Set<String> set1=new HashSet<String>();
		//set1안에 String만을 담겠다_Set은 인터페이스 이므로 생성안됨 그걸구현한 클래스인 HashSet으로 생성
		
		set1.add("사과");
		set1.add("오렌지");
		set1.add("배");
		set1.add("사과");  //갯수포함 안됨..중복허용 안되니까
		set1.add("키위");
		set1.add("바나나");
		
		System.out.println("데이터 갯수: "+set1.size());
		
		System.out.println("출력_#1");
		for(String s:set1)
			System.out.println(s);
		System.out.println();
		
		System.out.println("출력_#2");
		Iterator<String> iter=set1.iterator();
		
		while(iter.hasNext()) //데이타가 더이상 없으면 false반혼
		{
			String s=iter.next();
			System.out.println(s); //다음으로 이동함과 동시 데이타 반환
		}
		
		System.out.println("출력_#3");
		Object [] ob=set1.toArray();
		for(int i=0;i<ob.length;i++)
		{
			System.out.println(ob[i]);
		}
		
		//모든데이타 삭제
		set1.clear();
		
		//확인
		if(set1.isEmpty())
			System.out.println("Set타입안에 데이타가 없다");
		else
			System.out.println("Set타입안에 데이타가 있다");
			

		
	}

}
