void main() {
  Solution s = Solution();

  bool res = s.rotateString("abcde", "abced");

  print(res);
}

class Solution {
  bool rotateString(String s, String goal) {
    if (s.length != goal.length) {
      return false;
    }
    String doubleS = s + s;

    return doubleS.contains(goal);
  }
}
