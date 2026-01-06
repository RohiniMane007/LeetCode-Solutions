import java.util.HashSet;
import java.util.Set;

public class RepeateNum {
    public static void main(String[] args) {
      int result =  repeatedNTimes(new int[]{1,2,3,3});
      System.out.println("Result: " + result);
        
    }

    public static int repeatedNTimes1(int[] nums) {

        // int len = nums.length;
        // int n = len / 2;
        // System.out.println("n: " + n );
        // System.out.println("n+1: " + (n+1));

        for(int i =0; i< nums.length - 1; i++){
            for(int j = i + 1; j< nums.length; j++){
                if(nums[i]== nums[j]){
                    return nums[i];
                }
            }
        }
        return 0;
    }

     public static int repeatedNTimes(int[] nums) {

       
        // System.out.println("n: " + n );
        // System.out.println("n+1: " + (n+1));
        // HashSet<Integer> set = new HashSet<>();
        
        // for(int i = 0; i < nums.length ; i++){
        //     set.add(nums[i]);
        //          System.out.println("n: " + nums[i] );
        //         if(!set.contains(nums[i])==true){
        //             return nums[i];
        //         }       
        // }

        Set<Integer> set = new HashSet<>();
        for (int num : nums) {
            System.out.println("n: " + num );
            if (!set.add(num)) {
                return num;
            }
        }

        return 0;
    }
    
}
