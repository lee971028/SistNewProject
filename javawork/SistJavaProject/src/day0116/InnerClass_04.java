package day0116;

class OuterObj{
	
	public void disp()
	{
		System.out.println("외부클래스의 disp메서드");
		System.out.println("외부에서 내부클래스의 write 메서드 호출");
		
		innerObj inObj=new innerObj();
		inObj.write();
		
	}
	
	class innerObj{
		
		public void write()
		{
			System.out.println("내부클래스의 write메서드");
		}
	}
}

/////////////////////
public class InnerClass_04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		OuterObj outObj=new OuterObj();
		outObj.disp();
		System.out.println("----------------------------");
		
		//내부클래스는 외부통해서만 생성가능
		//OuterObj.innerObj obj=new OuterObj().new innerObj();
		OuterObj.innerObj obj=outObj.new innerObj();
		obj.write();
	}

}
