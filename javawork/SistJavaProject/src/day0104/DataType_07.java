package day0104;

public class DataType_07 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        byte a=(byte)128;  //디모션 : 더 작은 자료형으로의 변환,값손실
        byte b=127; 
        
        System.out.println(a);
        System.out.println(b);
        
        
        //강제형변환(cast연산자)을 올바르게 사용하는 경우
        int x=7;
        int y=4;
        
        System.out.println(x/y); //정수형끼리의 계산결과는 무조건 정수형 int타입
        System.out.println((double)x/y); //계산시 x를 double로 변환해서 계산: 결과는 double
        System.out.println(x/(double)y); //수식중 한개만 double이어도 결과는 double
        
        //형변환
        double d=100.0;
        int i=100;
        int result=(int)d+i;
        double result2=(double)d+i;
        
        System.out.println("d="+d);
        System.out.println("i="+i);
        System.out.println("result="+result);
        System.out.println("result2="+result2);
	}

}
