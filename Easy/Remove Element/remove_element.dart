void main() {
  List<int> nums = [0, 1, 2, 2, 3, 0, 4, 2];

  Solution s = Solution();
  s.removeElement(nums, 2);
}

class Solution {
  List<int> expectedNums = [];
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((i) => i == 2);
    nums.sort();
    expectedNums.addAll(nums);
    return nums.length;
  }
}
