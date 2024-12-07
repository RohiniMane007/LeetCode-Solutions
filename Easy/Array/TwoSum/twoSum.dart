void main() {
  // List<int> nums = [2, 11, 7, 15];
  List<int> nums = [3, 2, 4];

  // int target = 9;
  int target = 6;
  List<int> result = [];
  Solution s = new Solution();
  result = s.twoSum(nums, target);
  print(result.toString());
}

class Solution {
  List<int> res = [];

  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          res.addAll([i, j]);
        }
      }
    }

    return res;
  }
}
