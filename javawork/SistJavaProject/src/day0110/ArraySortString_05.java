package day0110;

public class ArraySortString_05 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
       String [] data= {"이승미","홍수아","김민선","강호동","전지현","송혜교","이효리"};
       
       System.out.println("**정렬전 출력**");
       for(int i=0;i<data.length;i++)
       {
    	   System.out.print(data[i]+"  ");
       }
       System.out.println();
       
       
       System.out.println("**오름차순 출력**");
       
       //System.out.println("a".compareTo("b")); -1 출력
       //같으면 0, i>j 양수  i<j 음수   int반환
       
       for(int i=0;i<data.length-1;i++)
       {
    	   for(int j=i+1;j<data.length;j++)
    	   {
    		   if(data[i].compareTo(data[j])>0)
    		   {
    			   String temp=data[i];
    			   data[i]=data[j];
    			   data[j]=temp;
    		   }
    	   }
       }
       
       //출력
       for(int i=0;i<data.length;i++)
       {
    	   System.out.print(data[i]+"  ");
       }
       System.out.println();
	}

}
