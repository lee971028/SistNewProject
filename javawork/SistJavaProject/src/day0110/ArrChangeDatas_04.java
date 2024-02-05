package day0110;

public class ArrChangeDatas_04 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        int [] arr= {4,8,9,12,78,98,23,22,5,3};
        
        System.out.println("**원데이터**");
        for(int i=0;i<arr.length;i++)
        {
        	System.out.print(arr[i]+"  ");
        }
        System.out.println();
        
        System.out.println("**거꾸로 변경하기**");
        
        for(int i=0;i<arr.length/2;i++)
        {
        	int temp=arr[i];
        	arr[i]=arr[arr.length-1-i]  ;  //10개일때 0하고 9번하고 바꾸는것
        	arr[arr.length-1-i]=temp;
        }
        //출력
        for(int i=0;i<arr.length;i++)
        {
        	System.out.print(arr[i]+"  ");
        }
        System.out.println();
        
        System.out.println("**오름차순 정렬**");
        //가장작은숫자 앞으로 보내기(선택정렬)
        //Arrays.sort(arr);  배열 arr을 정렬한다
        
        //기준데이터는 0부터 끝에서 두번째 까지
        for(int i=0;i<arr.length-1;i++)
        {
        	//비교하는 데이타는 기준다음값부터 끝까지
        	for(int j=i+1;j<arr.length;j++)
        	{
        		if(arr[i]>arr[j])
        		{
        			int temp=arr[i];
        			arr[i]=arr[j];
        			arr[j]=temp;
        		}
        	}
        }
        
        //출력
        for(int i=0;i<arr.length;i++)
        {
        	System.out.print(arr[i]+"  ");
        }
        System.out.println();
        
	}

}
