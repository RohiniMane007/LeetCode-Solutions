public class ReverseNumber {
    public static void main(String[] args) {
       
        int result = reverse(-123);
        System.out.println(result);
    }

     public static int reverse(int x) {
        int temp = x;
        int reverseNum = 0;

       
        while(temp != 0){
            int digit = temp % 10;
            temp /= 10;
            if (reverseNum > Integer.MAX_VALUE / 10 ||
                (reverseNum == Integer.MAX_VALUE / 10 && digit > 7)) {
                return 0;
            }
            if (reverseNum < Integer.MIN_VALUE / 10 ||
                (reverseNum == Integer.MIN_VALUE / 10 && digit < -8)) {
                return 0;
            }
            reverseNum = (reverseNum * 10) + digit;  
        }
        
        return reverseNum;
       
    }
}
