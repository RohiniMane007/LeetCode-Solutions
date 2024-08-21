void main() {
 int num= 4;
  Solution s = Solution();
 int res = s.climbStairs(num);
  print(res);
}

class Solution {

  int climbStairs(int n) {
    if (n == 0 || n == 1) {
        return 1;
    }
    
    List<int> numList = List.filled(n + 1, 0);
    numList[0] = 1;
    numList[1] = 1;
    
    for (int i = 2; i <= n; i++) {
        numList[i] = numList[i-1] + numList[i-2];
    }
    
    return numList[n];
  }
}