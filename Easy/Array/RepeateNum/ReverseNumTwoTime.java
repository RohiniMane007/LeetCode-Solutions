public class ReverseNumTwoTime {

    public static void main(String[] args){
       boolean result = isSameAfterReversals(120);
       System.out.println(result);
    }

     public static boolean isSameAfterReversals(int num) {
        int temp = num;
        int reverseNum = 0, reverseNum2=0;

        while(temp !=0){
            int digit = temp % 10;
            temp /=10;
            reverseNum = (reverseNum * 10) + digit;
        }

         while(reverseNum !=0){
            int digit = reverseNum % 10;
            reverseNum /=10;
            reverseNum2 = (reverseNum2 * 10) + digit;
        }

        return reverseNum2 == num;

        
    }
    
}
