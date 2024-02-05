package day0109;

public class ArrMaxNum_13 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int [] data= {12,4,123,45,54,88,99,65,32,98,155};
		
		System.out.println("갯수: "+data.length);
		
		int max=data[0]; //첫데이타를 무조건 최대값에 지정
		int min=data[0];
		
		//두번째 데이타 부터 끝까지 max와 비교
		for(int i=1;i<data.length;i++)
		{
			if(max<data[i])
				max=data[i];
			
			if(min>data[i])
				min=data[i];
		}
		
		System.out.println("최대값: "+max);
		System.out.println("최소값: "+min);
		
	}

}
