import 'dart:core';

void main() {
  List<int> nums = [1, 1, 2];
//    List<int> nums = [0,0,1,1,1,2,2,3,3,4];

  Solution s = Solution();
  int n = s.removeDuplicates(nums);
  print(n);
}

class Solution {
  List<int> res = [];
  int removeDuplicates(List<int> nums) {
    List<int> expectedNums = [];

    for (int i = 0; i < nums.length; i++) {
      if (expectedNums.contains(nums[i]) == false) {
        expectedNums.add(nums[i]);
      }
      
    }
    nums.clear();
    nums.addAll(expectedNums);
   
    return expectedNums.length;
  }
}
