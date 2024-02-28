package test;

public class Student {

	private String name;
	private String address;
	private int score;
	
	public Student() {
		// TODO Auto-generated constructor stub
	}
	
	public Student(String name,String addr,int score) {
		this.name=name;
		this.address=addr;
		this.score=score;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
	
}
