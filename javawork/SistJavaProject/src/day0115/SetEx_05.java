package day0115;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx_05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Set<Integer> set1=new HashSet<Integer>();
		set1.add(5);
		set1.add(4);
		set1.add(15);
		set1.add(25);
		set1.add(35);
		
		System.out.println("갯수: "+set1.size());
		
		System.out.println("출력_#1");
		for(int n:set1)
			System.out.printf("%5d",n);
		System.out.println();
		
		System.out.println("출력_#2");
		Iterator<Integer> iter=set1.iterator();
		while(iter.hasNext())
		{
			System.out.printf("%5d",iter.next());
		}
		System.out.println();
		System.out.println("출력_#3");
		Object [] ob=set1.toArray();
		for(int i=0;i<ob.length;i++)
		{
			System.out.printf("%5d",ob[i]);
		}
		
	}

}
