package day0116;

abstract class AbEx{
	
	abstract public void dataAdd();
	abstract public void dataList();
}
/////////////////////////

public class Anonymous_08 {

	AbEx ab1=new AbEx() {
		
		@Override
		public void dataList() {
			// TODO Auto-generated method stub
			System.out.println("데이타를 출력합니다");
		}
		
		@Override
		public void dataAdd() {
			// TODO Auto-generated method stub
			System.out.println("데이타를 추가합니다");
		}
	};
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Anonymous_08 anony=new Anonymous_08();
		anony.ab1.dataAdd();
		anony.ab1.dataList();
	}

}
