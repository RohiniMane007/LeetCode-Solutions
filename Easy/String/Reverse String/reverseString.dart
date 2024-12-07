void main() {
  Solution s = Solution();
  s.reverseString(["h", "e", "l", "l", "o"]);
}

class Solution {
  void reverseString(List<String> s) {
    int left = 0;
    int right = s.length - 1;
    while (left < right) {
      String temp = s[left];
      s[left] = s[right];
      s[right] = temp;

      left++;
      right--;
    }

    // s.setRange(0, s.length, s.reversed);

    /*List<String> temp = s.reversed.toList();
    s.clear();
    s.addAll(temp);*/
  }
}
