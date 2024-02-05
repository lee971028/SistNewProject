package day0112;

interface InterA{
	
	public void singasong();
	public void draw();
}
////////////////////////
interface InterB extends InterA{
	public void playgame();
	public void write();
}
///////////////////////
class Imple implements InterB{

	@Override
	public void singasong() {
		// TODO Auto-generated method stub
		System.out.println("노래하기");
	}

	@Override
	public void draw() {
		// TODO Auto-generated method stub
		System.out.println("그림그리기");
	}

	@Override
	public void playgame() {
		// TODO Auto-generated method stub
		System.out.println("게임하기");
	}

	@Override
	public void write() {
		// TODO Auto-generated method stub
		System.out.println("숙제하기");
	}

	
	
}
/////////////////////////
public class InterImpl_14 {

	public static void main(String[] args) {
		// 하위클래스 생성
		Imple im=new Imple();
		im.singasong();
		im.draw();
		im.playgame();
		im.write();
		
		
		//다형성 생성
		InterB inb=new Imple();
		inb.draw();
		inb.singasong();
		inb.playgame();
		inb.write();

	}

}
