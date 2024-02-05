package day0105;

import java.util.Scanner;

public class Equal_15 {

	public static void main(String[] args) {
		//문자열 비교는 관계연산자로 이용 안되고
		//equals()라는 메서드를 이용해서 비교한다
		
		Scanner sc=new Scanner(System.in);
		
		String word; //입력할 단어
		
		System.out.println("영어단어를 입려해보세요");
		System.out.println("ex) happy,rose,dragon,angel,music");
		word=sc.nextLine();
		
		System.out.println("입력한 단어: "+word);
		
		if(word.equals("angel"))
			System.out.println("**천사**");
		else if(word.equalsIgnoreCase("happy"))
			System.out.println("**행복하다**");
		else if(word.equalsIgnoreCase("rose"))
			System.out.println("**장미**");
		else if(word.equalsIgnoreCase("music"))
			System.out.println("**음악**");
		else if(word.equalsIgnoreCase("dragon"))
			System.out.println("**용**");
		else
			System.out.println("한글단어가 등록되지 않았어요");

	}

}
