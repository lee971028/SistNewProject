package day0111;

class Member{
	
	private String stuName;
	private String stuGender;
	private String stuAddr;
	
	static String ban;
	static int cnt=0;
	
	//멤버 초기화(수정)메서드
	public void setMemberData(String name,String gender,String addr)
	{
		this.stuName=name;
		this.stuGender=gender;
		this.stuAddr=addr;
	}
	
	//출력메서드
	public void writeMemberData()
	{
		cnt++;
		System.out.println("**학생"+cnt+" 정보***");
		System.out.println("소속학급: "+Member.ban);
		System.out.println("이름: "+this.stuName);
		System.out.println("성별: "+this.stuGender);
		System.out.println("주소: "+this.stuAddr);
		System.out.println("------------------------------");
	}
}

/////////////////
public class StaticObTest_05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Member mem1=new Member();
		Member mem2=new Member();
		
		mem1.setMemberData("최지우", "여자", "서울시 강남구");
		mem2.setMemberData("이민우", "남자", "서울시 구로구");
		
		Member.ban="쌍용교육센터 JAVA반";
		
		mem1.writeMemberData();
		mem2.writeMemberData();
		
	}

}
