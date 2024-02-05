package day0105;

import java.util.Scanner;

public class QuizOper_14 {

	public static void main(String[] args) {
		/*
		 * (점수에 대한 조건은 90점이상:매우잘함 80점 이상: 잘함  70점이상: 좀더노력할것  70점미만: 꽝!!
		 * 이름을 입력해주세요
		 * 김민아
		 * 자바시험점수를 입력해주세요
		 * 88
		 * 
		 * ==============================
		 * 김민아님의 시험평가는 잘함 입니다
		 * ==============================
		 */
		
		Scanner sc=new Scanner(System.in);
		String name,p_msg;
		int score;
		
		System.out.println("당신의 이름은?");
		name=sc.nextLine();
		System.out.println("자바점수는?");
		score=sc.nextInt();
		
		/*if(score>=90)
			p_msg="매우 잘함";
		else if(score>=80)
			p_msg="잘함";
		else if(score>=70)
			p_msg="좀더 노력할것~";
		else
			p_msg="꽝!!!";*/
		
		p_msg=score>=90?"매우잘함":score>=80?"잘함":score>=70?"좀더 노력할것~":"꽝!!!";
		
		System.out.println(name+"님의 자바점수에대한 평가는 "+p_msg+"입니다");
			
		

	}

}
