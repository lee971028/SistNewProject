package day0115;


import java.util.Iterator;
import java.util.Vector;

public class ListEx_07 {

	public static void main(String[] args) {
		// 1.순차적으로 데이타 들어간다
		//2.중복데이타도 허용한다
		//3.처음생성시 일정한 갯수로 생성되는데 그이상의 데이타를 넣으면 자동으로 공간이 늘어난다

		//List<String> list=new Vector<String>();
		Vector<String> list=new Vector<String>();
		//생성자가 디폴트인경우 기본할당크기 10
		System.out.println("초기데이타갯수: "+list.size());
		System.out.println("초기할당크기"+list.capacity());
		
		list.add("장미");
		list.add("장미");
		list.add("수국");
		list.add("프리지아");
		list.add("안개");
		list.add("장미");
		list.add("프리지아");
		list.add("안개");
		list.add("장미");
		list.add("프리지아");
		list.add("안개");
		list.add("장미");
		
		System.out.println("초기데이타갯수: "+list.size());
		System.out.println("초기할당크기: "+list.capacity());
		
		System.out.println("출력_#1");
		for(int i=0;i<list.size();i++)
		{
			String s=list.get(i);
			System.out.print(s+" ");
		}
		System.out.println();
		
		System.out.println("출력_#2");
		for(String s:list)
			System.out.print(s+" ");
		System.out.println();
		
		System.out.println("출력_#3");
		Iterator <String> iter=list.iterator();
		while(iter.hasNext())
			System.out.print(iter.next()+" ");
		System.out.println();
		
		System.out.println("출력_#4");
		
		Object [] ob=list.toArray();
		for(int i=0;i<ob.length;i++)
		{
			String s=(String)ob[i];
			System.out.print(s+" ");
		}
	}

}
