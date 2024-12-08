import "dart:math";

void main() {
  Solution s = Solution();
  String str = s.addStrings("11", "123");

  print(str);
}

class Solution {
  String addStrings(String num1, String num2) {
    Map<String, int> digits = {for (int i = 0; i < 10; i++) '$i': i};

    Iterator<String> number1 = num1.split('').reversed.iterator;
    Iterator<String> number2 = num2.split('').reversed.iterator;
    int len = max(num1.length, num2.length);
    List<String> nums = List.filled(len, '');
    int carry = 0;

    for (int i = 0; i < len; i++) {
      int val1 = number1.moveNext() ? digits[number1.current]! : 0;
      int val2 = number2.moveNext() ? digits[number2.current]! : 0;
      int add = val1 + val2 + carry;
      carry = add ~/ 10;
      nums[i] = "${add % 10}";
    }

    return (carry > 0 ? "1" : "") + nums.reversed.join();
  }
}
