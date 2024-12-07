import 'dart:math';
void main() {
  Solution s =Solution();
  bool b =  s.isHappy(2);
  print(b);
}

class Solution {
    bool isHappy(int n) {
        int sum = 0;
        if (n == 1) {
            return true;
        } else if (n==4) {
            return false;
        } else {
            while (n > 0) {
                sum = (sum + pow(n % 10, 2)).toInt();
                n = (n ~/ 10).toInt();
            }
            return isHappy(sum);
        }
    }
}