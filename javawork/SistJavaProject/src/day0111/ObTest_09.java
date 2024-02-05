package day0111;

class Manggo{
	
	private String writer;
	private String subject;
	private static String mes="Happy Day!!";
	
	//setter,getter
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public static String getMes() {
		return mes;
	}
	public static void setMes(String mes) {
		Manggo.mes = mes;
	}
	
	
	
}

public class ObTest_09 {

	public static void writeManggo(Manggo m)
	{
		System.out.println("**망고 클래스 출력**");
		System.out.println("작성자: "+m.getWriter());
		System.out.println("제목: "+m.getSubject());
	}
	
	
	public static void main(String[] args) {

      System.out.println("망고클래스 메세지출력");
      System.out.println(Manggo.getMes());
      
      
      Manggo m1=new Manggo();
      m1.setWriter("이민후");
      m1.setSubject("오늘은 목요일");
      
      Manggo m2=new Manggo();
      m2.setWriter("이민정");
      m2.setSubject("오늘모임어때?");
      
      //같은클래쇼내의 static메서드 호출은 클래스명 생략가능하다
      writeManggo(m1);
      writeManggo(m2);

	}

}
