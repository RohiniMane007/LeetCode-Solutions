import java.util.HashSet;
import java.util.Set;

public class RepeateNum {
    public static void main(String[] args) {
      int result =  repeatedNTimes(new int[]{1,2,3,3});
      System.out.println("Result: " + result);   
    }

    public static int repeatedNTimes1(int[] nums) {
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
