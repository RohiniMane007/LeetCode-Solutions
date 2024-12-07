void main() {
  List<int> nums = [1,3,5,6];
  Solution s = Solution();
  int res = s.searchInsert(nums, 4);
  
  print(res);
}

class Solution {
  int searchInsert(List<int> nums, int target) {
    int low = 0, high = nums.length - 1;
    while (high >= low) {
      
      int mid = (low + high) ~/ 2;

      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] > target) {
        high = mid - 1;
     
      } else {
        low = mid + 1;
      }
    }
    return low;
  }
}
