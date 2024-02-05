package day0112;

public class Employee_04 {

	String empName;
	int salary;
	
	public Employee_04(String name,int sal) {
		this.empName=name;
		this.salary=sal;
	}
	
	//메서드
	public String getEmployee()
	{
		return empName+","+salary;
	}
}
