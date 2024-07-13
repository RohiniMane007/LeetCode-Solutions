void main() {
  Solution s = Solution();
  bool res = s.isPalindrome(10);
  if (res == true) {
    print("palindrome");
  } else {
    print("Not palindrome");
  }
}

class Solution {
  bool isPalindrome(int x) {
    int reverseX = 0;
    int temp = x;

    if (x.isNegative || (x % 10 == 0 && x != 0)) {
      return false;
    }

    while (temp != 0) {
      int digit = temp % 10;
      temp = (temp ~/ 10).toInt();
      reverseX = (reverseX * 10) + digit;
    }

    if (reverseX - x == 0) {
      return true;
    } else {
      return false;
    }
  }
}
