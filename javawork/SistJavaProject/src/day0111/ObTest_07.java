package day0111;

class MyTest{
	
	private String name;
	private String addr;
	private int age;
	
	//각각의 setter,getter
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	//3번의 멤버변수를 한꺼번에 변경한는 메서드,
	public void setMembers(String name,String addr,int age)
	{
		/*this.name=name;
		this.addr=addr;
		this.age=age;*/
		
		this.setName(name);
		setAddr(addr);
		setAge(age);
	}
	
	//3개의 멤버변수출력을 한꺼번에 문자열로 리턴
	public String getMembers()
	{
		String s="이름: "+name+"\n주소: "+addr+"\n나이: "+age;
		
		return s;
	}
	
}
////////////////////////
public class ObTest_07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyTest t1=new MyTest();
		t1.setName("김태희");
		t1.setAddr("서울시 구로구");
		t1.setAge(33);
		
		System.out.println("**메서드 각각 값출력**");
		System.out.println("이름: "+t1.getName());
		System.out.println("주소: "+t1.getAddr());
		System.out.println("나이: "+t1.getAge());
		
		
		System.out.println("**3개의 값을 한번에 변경하고 출력하기***");
		MyTest t2=new MyTest();
		t2.setMembers("이효리", "제주시", 22);
		System.out.println(t2.getMembers());
	}

}
