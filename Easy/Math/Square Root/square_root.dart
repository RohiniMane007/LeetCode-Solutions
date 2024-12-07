import 'dart:math';
void main() {
  int  num = 1;
  
  Solution s = Solution();
  int res = s.mySqrt(num);
  
  print(res);
}

class Solution {
  int mySqrt(int x) {
    double n = sqrt(x);
    return n.toInt();
  }
}
