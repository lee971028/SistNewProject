package day0111;

//객체의 속성:  인스턴스변수    객체의 동작: 클래스의 메서드
//Object: 객체,실제로 존재하는 사물(핸드폰,자동차....)
//class: 객체를 정의,객체를 생성하기 위해 존재(설계도...)
//Instance: 클래스에서 만들어진 객체 를 그 클래스의 인스턴스

class Person{
	private String name;
	private int age;
	private String hp;
	private String addr;
	
	//디폴트 생성자
	public Person() {
		// TODO Auto-generated constructor stub
	}
	
	//명시적생성자
	public Person(String name,int age,String addr,String hp) {
		this.name=name;
		this.age=age;
		this.addr=addr;
		this.hp=hp;
	}
	
	//setter getter
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
}
//////////////////////////////////////
public class ObjectReview_01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person p1=new Person();
		//p1.name="홍길동";  private인스턴스변수는 생성을 해도 변수에 접근안됨
		p1.setName("김민지");
		p1.setAddr("강남구");
		p1.setAge(22);
		p1.setHp("010-111-2222");
		
		String name=p1.getName();
		int age=p1.getAge();
		String addr=p1.getAddr();
		String hp=p1.getHp();
		
		System.out.println("[개인신상정보]");
		System.out.println(name);
		System.out.println(age);
		System.out.println(addr);
		System.out.println(hp);
		
		
		Person p2=new Person("김소미", 22, "서울시", "010-111-1111");
		
		System.out.println("-----------------------------------");
		System.out.println(p2.getName());
		System.out.println(p2.getAge());
		System.out.println(p2.getAddr());
		System.out.println(p2.getHp());
		
	}

}
